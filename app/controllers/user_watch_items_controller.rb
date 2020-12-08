class UserWatchItemsController < ApplicationController
    def index 
        user_watch_items = UserWatchItem.all
        render json: user_watch_items
    end

    def update
        userWatchItem = UserWatchItem.find(userWatchItem_params[:id])
        userWatchItem.update(userWatchItem_params)
        render json: userWatchItem
    end

    private

    def userWatchItem_params
        params.require(:user_watch_item).permit(:id, :user_id, :watch_item_id, :unitAmount)
    end
end
