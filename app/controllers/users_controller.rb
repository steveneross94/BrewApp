class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]


    def show
    end

    def edit
    end

    def update
        @user.update
        redirect_to user_path(@user)
    end

    def new
        @user = User.new
    end

    def destroy
        @user.destroy
        redirect_to home_path
    end

    def create
        user = User.create(user_params)
        redirect_to user_path(user)
    end

private

    def find_user
        @user = User.find_by(params[:id])
    end

    def user_params
        params.require(:user).permit(:username)
    end

end