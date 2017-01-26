#!/bin/bash

function resource {
  source $SERVER_HOME/setup/webapp.sh
}

function gos {
  cd $SERVER_HOME
}

function goc {
  cd $CLIENT_HOME
}

function cls {
  alias cls='printf "\033c"'
}

function mem {
    ps -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS;
    free -h
}

function mem_mon {
  interval=$1
  if [[ -z $interval ]]; then
    interval=3
  fi

  echo "Checking every $interval seconds."

  while [[ 1 ]]; do
    mem > /tmp/mem
    cat /tmp/mem|grep -e "rails s.*3000"|grep -v grep|awk '{printf "Org: %d\t", $1}'
    echo
    sleep $interval
  done
}

function killBranch {
  git branch -d "$1"
  git push origin :"$1"
}

function prune {
  git remote prune origin
}

function genreset {
  cd $SERVER_HOME
  rake db:drop
  rake db:create
  rake db:migrate
  rake db:seed
  mysqldump -uaehven -pcypress SERVER_develop > reset.sql
}

function dbreset {
  JUST_RESET=false

  if [[ ! -f $SERVER_HOME/reset.sql ]]
    then
    genreset
    JUST_RESET=true
  fi

  case $1 in
    test)
      mysql -usxyphmel0m1m0qud -pyxd7hpyvv2z9i0bc -hbqmayq5x95g1sgr9.cbetxkdyhwsb.us-east-1.rds.amazonaws.com --database cdhf9b99aml66wq5 < reset.sql
      ;;
    *)
      if [[ "$JUST_RESET" != "true" ]]; then
        mysql -uaehven -pcypress --database SERVER_develop < reset.sql
      fi
      ;;
  esac

  echo "Database reset."
}

export DISALLOWED_CODE='byebug|logger.*#{params}|debugger|binding.pry'

function isDisallowedCodeUsed {
  result=`find $SERVER_HOME -type f -name "*.*rb" -o -name "*.*js" -not -path "*\.bundle/*" -not -path "*\bower_components/*" -exec grep -Eln $DISALLOWED_CODE {} \;`

  if [[ ! -z "$result" ]]; then
    echo "***************************************************"
    echo "************** DEPLOYMENT CANCELLED ***************"
    echo "***************************************************"
    echo "***** There are calls to disallowed code in:  *****"
    echo "$result"
    echo "***************************************************"
    return 0
  else
    return 1
  fi
}

function simplify_string() {
  x=$1

  #remove spaces
  x="${x//+([[:space:]])/}"

  #remove color codes
  case $(uname -s) in
    Linux)
      x=$(echo $x|sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g")
      ;;
    Darwin)
      x=$(echo $x|sed -E "s/"$'\E'"\[([0-9]{1,2}(;[0-9]{1,2})*)?m//g")
      ;;
  esac

  echo $x
}

function stringify_git_st() {
  st=$(git status --porcelain)
  st=$(simplify_string "$st")
  echo "$st"
}

function stringify_git_origin_diff() {
  d=$(git --no-pager diff $BRANCH origin/$BRANCH)
  d=$(simplify_string "$d")
  echo "$d"
}

function stringify_git_unpushed() {
  u=$(git log @{u}..)
  u=$(simplify_string "$u")
  echo "$u"
}

function codeCheck {
  echo -n "Checking git st.... "
  if [[ $(stringify_git_st) != "" ]]; then
      echo "Uncommitted changes!"
      return 1
  fi
  echo "OK."

  echo -n "Checking git unpushed commits.... "
  if [[ $(stringify_git_unpushed) != "" ]]; then
      echo "Unpushed changes!"
      return 1
  fi
  echo "OK."

  echo "Looking for disallowed code.... "
  if isDisallowedCodeUsed; then
    return 1
  fi
  echo "OK"

  return 0
}

function deploy {
  local OPTIND;
  unset APP;
  unset BRANCH;
  unset NOMIGRATE;
  unset NOLOG;
  while getopts "a:t:b:o:lcm" opt; do
    case "${opt}" in
      a)
          APP=${OPTARG};
          [[ $APP == "aehven" || $APP == "test" || $APP == "production" ]] || unset APP
      ;;
      b)
          BRANCH=${OPTARG}
      ;;
      l)
          NOLOG=true
      ;;
      m)
          NOMIGRATE=true
      ;;
      *)
          deploy_usage
      ;;
    esac;
  done;

  shift $((OPTIND-1));

  if [[ -z $APP || -z $BRANCH ]]; then
      deploy_usage;
      return 1;
  fi;

  cd /tmp
  rm -rf webapp
  rm -rf client

  cd /tmp
  git clone -b$BRANCH https://github.com/aehven/server.git webapp
  git clone -b$BRANCH https://github.com/aehven/client.git client

  cd /tmp/client
  npm install
  ng build -aot -prod

  cd /tmp/webapp
  rm -rf public
  cp -rp /tmp/client/dist /tmp/webapp/public

  cd /tmp/webapp
  git init .
  git add .
  git commit -am "deploy"
  git remote add heroku git@heroku.com:$BASE_NAME-$APP.git
  git push -f heroku $BRANCH:master
  heroku logs --tail -aror-ng-starter
}


function tmuxinit {
  tmux start-server
  tmux new-session -d -s webapp
  tmux new-window -t webapp:1 -n mysql
  tmux new-window -t webapp:2 -n rails-c
  tmux new-window -t webapp:3 -n rails-server
  tmux new-window -t webapp:4 -n rails-bash
  tmux new-window -t webapp:5 -n ng-serve
  tmux new-window -t webapp:6 -n ng-bash


  tmux send-keys -t webapp:1 "web; gos; mysql -uaehven -pcypress --database ${BASE_NAME}_develop" C-m
  tmux send-keys -t webapp:2 "web; gos; rails c" C-m
  tmux send-keys -t webapp:3 "web; gos; rails s -b0.0.0.0 -p3000" C-m
  tmux send-keys -t webapp:4 "web; gos" C-m
  tmux send-keys -t webapp:5 "web; goc; ng serve --host 0.0.0.0 --port 4200" C-m
  tmux send-keys -t webapp:6 "web; goc;" C-m

  tmux select-window -t webapp:5
  tmux attach-session -t webapp
}

function start {
  rm log/development.log; rails s -b0.0.0.0 | tee log/development.log
}

function stop {
  kill -9 $(ps -ef|grep "rails s"|grep -v "rails s"|awk '{print $2}') &> /dev/null
  kill -9 $(ps -ef|grep "puma.*worker"|grep -v "grep"|awk '{print $2}') &> /dev/null
}

echo "SERVER_HOME = $SERVER_HOME"
