# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
WatchItem.destroy_all
UserWatchItem.destroy_all

User.create(username: "admin", first_name: "Michael", last_name: "Lee")

WatchItem.create(name: "New Apple iPhone 12 (128GB, Blue) [Locked] + Carrier Subscription", initial_cost: 879.00, item_img: "https://m.media-amazon.com/images/I/41xssMLI2DL._SL160_.jpg", ASIN: "B08L5P87VL")

WatchItem.create(name: "Cheetos Puffs Cheese Flavored Snacks, 0.875 Ounce, Pack of 40", initial_cost: 18.98, item_img: "https://m.media-amazon.com/images/I/61I0izVeyJL._SL160_.jpg", ASIN: "B0792T5NZX")

UserWatchItem.create(user: User.all.sample, watch_item: WatchItem.find(1), unitAmount: 1)

UserWatchItem.create(user: User.all.sample, watch_item: WatchItem.find(2), unitAmount: 3)