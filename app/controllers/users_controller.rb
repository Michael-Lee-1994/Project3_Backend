class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def login
        user = User.find_by(username: params[:username])
        render json: user
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    private
    def user_params
        params.require(:user).permit(:id, :username, :first_name, :last_name, :watch_item, :watch_items)
    end
end
