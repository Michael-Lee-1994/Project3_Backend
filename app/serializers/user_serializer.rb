class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :first_name, :last_name
    has_many :user_watch_items
    has_many :watch_items
end