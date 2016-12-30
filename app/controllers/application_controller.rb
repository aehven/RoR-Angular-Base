class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include CanCan::ControllerAdditions

  before_action :authenticate_user!, unless: :allow_unauthenticated

  def allow_unauthenticated
    if(controller_name == "sessions" and action_name == "create")
      true
    else
      false
    end
  end
end
