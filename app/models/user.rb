class User < ApplicationRecord
    has_many :user_watch_items, dependent: :destroy
    has_many :watch_items, through: :user_watch_items

    validates :first_name, :last_name, presence: true
    validates :username, length: {minimum: 5}, uniqueness: true
end
