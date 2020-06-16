class BeersController < ApplicationController

    def index
        @beers = Beer.all
    end

    def new
        @beer = Beer.new

        @brewerys = Brewery.all
    end

    def create
        beer = Beer.create(beer_params)

        redirect_to brewery_path(beer.brewery_id)
    end

    private

    def beer_params
        params.require(:beer).permit(:name, :brewery_id)

    end

end