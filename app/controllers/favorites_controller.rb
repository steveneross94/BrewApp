class FavoritesController < ApplicationController
    before_action :find_fav, only: [:show, :edit, :update, :delete]
    def index
        @favorites = Favorite.all
    end
    
    def show
    end

    def new
        @favorite = Favorite.new
    end

    def create
        favorite = Favorite.create(fav_params)
        redirect_to favorites_path
    end

    def edit
    end

    def update
        @favorite.update
        redirect_to favorite_path(@favorite)
    end

    def delete
        @favorite.delete
        redirect_to favorites_path
    end

    private

    def fav_params
        params.require(:favorite).permit(:brewery_id, :customer_id)
    end

    def find_fav
        @favorite = Favorite.find(params[:id])
    end
    
end