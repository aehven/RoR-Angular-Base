class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    render json: @users.all
  end

  def show
    render json: @user
  end

  def update
    if @user.update_attributes(user_params)
      render json: @user
    else
      render json: @user.errors, status: 422
    end
  end

  def create
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end

end
