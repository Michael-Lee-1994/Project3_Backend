class WatchItem < ApplicationRecord
    has_many :user_watch_items, dependent: :destroy
    has_many :users, through: :user_watch_items
end
