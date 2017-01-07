class MealsController < ApplicationController
  load_and_authorize_resource

  def index
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
    params.require(:meal).require(:descriptioin)
    params.require(:meal).require(:calories)
  end

end
