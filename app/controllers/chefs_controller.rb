class ChefsController < ApplicationController

    def index
        @chefs = Chef.all
    end

    def show
        @chef = Chef.find(params[:id])
    end

    def new
        @chef = Chef.new
    end

    def create
        @chef = Chef.create!(chef_params)
        redirect_to @chef
    end

    def edit
        @chef = Chef.find(params[:id])
    end

    def update
        @chef = Chef.find(params[:id])
        @chef.update(chef_params)
        redirect_to @chef
    end

    def destroy
        @chef = Chef.find(params[:id])
        @chef.destroy
        redirect_to chefs_path
    end

    def register_chef
        @chef = Chef.find(params[:id])
    end

    private
    def chef_params
        params.require(:chef).permit(:name, :tagline, :zip_code, :photo_url, :bio)
    end

end
