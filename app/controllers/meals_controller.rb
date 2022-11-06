class MealsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @meals = Meal.all
    @categories = Category.all
  end

  def show
    @meal = Meal.find(params[:id])
    @category= Category.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    @meal.save
    redirect_to meals_path(@meal)
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = meal.find(params[:id])
    @meal.update(meal_params)
    redirect_to meals_path(@meal)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path(@meal)
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :description, :price, :stock, :image_url)
  end
end
