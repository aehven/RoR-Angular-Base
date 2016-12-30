class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    render json: User.all
  end

end
