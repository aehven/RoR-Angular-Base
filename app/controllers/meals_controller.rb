class MealsController < ApplicationController
  load_and_authorize_resource except: [:index]

  def index
    if params[:user_id].blank?
      @meals = current_user.meals
    else
      @meals = User.find(params[:user_id]).meals
    end

    if !params[:search].blank?
      @meals = @meals.search(params[:search])
    end

    @count = @meals.count
    @meals = @meals.paginate(per_page: params[:per_page], page: params[:page])
    render json: {meals: @meals, count: @count}
  end

  def show
    render json: @meal
  end

  def update
    if @meal.update_attributes(meal_params)
      render json: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  def create
    if @meal.save
      render json: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:user_id, :date, :time, :description, :calories)
  end

end
