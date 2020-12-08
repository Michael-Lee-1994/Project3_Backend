class WatchItemSerializer < ActiveModel::Serializer
    attributes :id, :name, :initial_cost, :item_img, :ASIN
    has_many :user_watch_items
    has_many :users
end