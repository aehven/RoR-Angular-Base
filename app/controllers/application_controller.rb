class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include CanCan::ControllerAdditions

  before_action :authenticate_user!, unless: :allow_unauthenticated

  #####
  # Authentication example
  #
  # 1. curl -XPOST -v -H 'Content-Type: application/json' http://localhost:3000/auth/sign_in -d '{"email": "a@null.com", "password": "password" }'
  # results in:
  # < HTTP/1.1 200 OK
  # < X-Frame-Options: SAMEORIGIN
  # < X-XSS-Protection: 1; mode=block
  # < X-Content-Type-Options: nosniff
  # < Content-Type: application/json; charset=utf-8
  # < access-token: cqIouK6uB_dy3blktjXELQ
  # < token-type: Bearer
  # < client: 4lYr4GFJTTajXpBjpVXDnw
  # < expiry: 1484326725
  # < uid: a@null.com
  # < ETag: W/"c956d52f13875a5cd2d598272c9e7c17"
  # < Cache-Control: max-age=0, private, must-revalidate
  # < X-Request-Id: 56ee5019-1f36-4d8b-9b81-e9b5f7db57f1
  # < X-Runtime: 0.347458
  # < Transfer-Encoding: chunked                                                                                                                                                         <
  # * Connection #0 to host localhost left intact
  # {"data":{"id":2,"email":"a@null.com","provider":"email","uid":"a@null.com","name":null,"nickname":null,"image":null,"first_name":"a","last_name":"a","role":null}}
  #
  # 2. curl -v  -H 'access-token: cqIouK6uB_dy3blktjXELQ' -H 'client: 4lYr4GFJTTajXpBjpVXDnw' -H "uid: a@null.com" -X GET http://localhost:3000/users
  # results in:
  # < HTTP/1.1 200 OK
  # < X-Frame-Options: SAMEORIGIN
  # < X-XSS-Protection: 1; mode=block
  # < X-Content-Type-Options: nosniff
  # < Content-Type: application/json; charset=utf-8
  # < access-token: wVxduX8S_VnT7eDtnYT6OA
  # < token-type: Bearer
  # < client: 4lYr4GFJTTajXpBjpVXDnw
  # < expiry: 1484326843
  # < uid: a@null.com
  # < ETag: W/"868a0940f98cb6e4ea28f10c78053d5b"
  # < Cache-Control: max-age=0, private, must-revalidate
  # < X-Request-Id: b6b43418-9a4f-46cb-bbb3-28cfb7d9e65e
  # < X-Runtime: 0.182694
  # < Transfer-Encoding: chunked
  # <
  # * Connection #0 to host localhost left intact
  # [{"id":2,"first_name":"a","last_name":"a","email":"a@null.com","role":null}]
  #
  #####

  def allow_unauthenticated
    if(controller_name == "sessions" and action_name == "create")
      true
    else
      false
    end
  end
end
