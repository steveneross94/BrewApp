class FavoritesController < ApplicationController
    before_action :find_fav, only: [:show, :edit, :update, :destroy]
    before_action :collection_array, only: [:new, :edit]
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
        redirect_to new_favorite_path
    end

    def edit
    end

    def update
        @favorite.update(fav_params)
        redirect_to favorite_path(@favorite)
    end

    def destroy
        @favorite.destroy
        redirect_to favorites_path
    end

    private

    def fav_params
        params.require(:favorite).permit(:beer_id, :user_id)
    end

    def find_fav
        @favorite = Favorite.find(params[:id])
    end

    def collection_array
        @beers = Beer.all
        @users = User.all
    end
    
end