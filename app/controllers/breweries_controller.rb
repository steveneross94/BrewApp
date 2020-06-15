class BreweriesController < ApplicationController
    before_action :find_brewery, only: [:show, :destroy, :update, :edit]
    def index
        @breweries = Brewery.all
    end
    
    def show
    end

    def new
     @brewery = Brewery.new
    end

    def create
        brewery = Brewery.create(brewery_params)
        redirect_to brewery_path(brewery)
    end

    def destroy
        @brewery.destroy
        redirect_to breweries_path
    end

    def edit
    end

    def update
        @brewery.update 
        redirect_to brewery_path(@brewery)
    end




    private 

    def find_brewery
        @brewery = Brewery.find(params[:id])
    end

    def brewery_params
        params.require(:brewery).permit(:name, :state, :brewery_type, :website_url, :img_url)
    end

end