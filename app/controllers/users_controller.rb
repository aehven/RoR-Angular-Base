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
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def create
    if @user.save
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    case action_name
    when "update"
      params.require(:user).permit(:email, :password, :first_name, :last_name)
    when "create"
      params.require(:user).require(:email)
      params.require(:user).require(:password)
      params.require(:user).require(:role)
      params.require(:user).permit(:email, :password, :first_name, :last_name, :role)
    end
  end

end
