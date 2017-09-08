class ChefsController < ApplicationController

    # GET /chefs
    def index
        @chefs = Chef.all

        render json: @chefs
    end

    # GET /chefs/1
    def show
        # @chef = Chef.find(params[:id])

        render json: @chef
    end


    # def new
    #     @chef = Chef.new
    # end

    # POST /chefs
    def create
        @chef = Chef.new(chef_params)

        if @chef.save
            render json: @chef.to_json, status: :created, location: @chef
        else
            render json: @chef.errors, status: :unprocessable_entity
        end
    end

    # def edit
    #     @chef = Chef.find(params[:id])
    # end

    # PATCH/PUT /chefs/1
    def update
        if @chef.update(chef_params)
            render json: @chef
        else
            render json: @chef.errors, status: :unprocessable_entity
        end
    end

    # DELETE /chefs/1
    def destroy
        @chef.destroy
    end

    # def register_chef
    #     @chef = Chef.find(params[:id])
    # end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_chef
        @chef = Chef.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chef_params
        params.require(:chef).permit(:name, :tagline, :zip_code, :photo_url, :bio)
    end

end
