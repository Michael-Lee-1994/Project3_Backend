class WatchItemsController < ApplicationController
    def index
        items = WatchItem.all
        render json: items
    end

    def show
        item = WatchItem.find(params[:id])
        render json: item
    end

    def create
        current_user = User.find(params[:user])
        item = current_user.watch_items.create(item_params)
        render json: current_user
    end

    def destroy 
        current_item = WatchItem.find(params[:id])
        current_item.destroy
        render json: current_item
    end


    private

    def item_params
        params.require(:watch_item).permit(:id, :name, :initial_cost, :item_img, :ASIN)
    end
end
