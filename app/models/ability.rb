class Ability
  include CanCan::Ability

  def initialize(user)
    case user.role
      when "admin"
        can :manage, :all

      when "manager"
        can [:read, :update], User
        can [:create], User do |user|
          user.role = "regular"
        end
        
      when "regular"
        can [:read, :update], User, id: user.id
    end
  end

  #might need to know permissions on client side for things like displaying of Edit buttons.
  #the server would reject an attempt to update a record, but best to avoid allowing it on
  #the client first.
  #as_json thanks to: https://gist.github.com/mewdriller/4980855
  def as_json
    abilities = []
    rules.each do |rule|
      abilities << { can: rule.base_behavior, actions: rule.actions.as_json, subjects: rule.subjects.map(&:to_s), conditions: rule.conditions.as_json }
    end
    abilities
  end

end
