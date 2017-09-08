class MealsController < ApplicationController

    def index
        @meals = Meal.all
    end

    def show
        @meal = Meal.find(params[:id])
    end

    def new
        @meal = Meal.new
    end

    def create
        @meal = Meal.create!(meal_params.merge(user_id: current_user.id))
        redirect_to @meal
    end

    def edit
        @meal = Meal.find(params[:id])
    end

    def update
        @meal = Meal.find(params[:id])
        @meal.update(meal_params)
        redirect_to @meal
    end

    def destroy
        @meal = Meal.find(params[:id])
        @meal.destroy
        redirect_to meals_path
    end

    def purchase

    end

    private
    def meal_params
        params.require(:meal).permit(:name, :photo_url, {:ingredients => []}, :price, :portion, :quantity, :chef, :description)
    end

end
