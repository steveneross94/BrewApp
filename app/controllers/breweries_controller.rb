class BreweriesController < ApplicationController

    def index
        @breweries = Brewery.all
    end
    
    def show
    
    end

    private 

    def find_brewery
        @brewery = Brewery.find(params[:id])
    end

    def brewery_params
        params.require(:brewery).permit(:name, :state, :brewery_type, :website_url, :img_url)
    end

end