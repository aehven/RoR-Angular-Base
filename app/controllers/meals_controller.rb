class MealsController < ApplicationController
  load_and_authorize_resource except: [:index]

  def index
    if params[:user_id].blank?
      @meals = current_user.meals
    else
      @meals = User.find(params[:user_id]).meals
    end

    @calories_today = @meals.today.sum(:calories)

    if !params[:search].blank?
      @meals = @meals.search(params[:search])
    end

    @filtered_meals = @meals.filter(params)
    if @filtered_meals != @meals
      @filtered_calories = @filtered_meals.sum(:calories)
      @meals = @filtered_meals
    end

    @count = @meals.count
    @meals = @meals.paginate(per_page: params[:per_page], page: params[:page])
    render json: {meals: @meals, count: @count,
                  calories_today: @calories_today,
                  filtered_calories: @filtered_calories}
  end

  def show
    render json: @meal
  end

  def update
    if @meal.update_attributes(meal_params)
      @meals = Meal.where(user_id: @meal.user_id)
      @calories_today = @meals.today.sum(:calories)
      render json: {meal: @meal, calories_today: @calories_today}
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

  def destroy
    if @meal.destroy
      render json: {}
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:user_id, :date, :time, :description, :calories)
  end

end
