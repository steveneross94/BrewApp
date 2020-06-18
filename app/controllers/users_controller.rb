class UsersController < ApplicationController
    before_action :find_user, only: [:show, :destroy]

    def index
        @users = User.all
    end

    def show
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
        if user.valid?
            redirect_to user_path(user)
        else
            flash[:user_errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username)
    end

end