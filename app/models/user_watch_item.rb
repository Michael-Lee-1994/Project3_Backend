class UserWatchItem < ApplicationRecord
  belongs_to :user
  belongs_to :watch_item
end
