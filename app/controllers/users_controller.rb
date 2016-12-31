class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    render json: @users.all
  end

  def show
    render json: @user
  end

end
