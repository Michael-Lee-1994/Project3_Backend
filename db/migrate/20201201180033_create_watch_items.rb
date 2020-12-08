class CreateWatchItems < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_items do |t|
      t.string :name
      t.decimal :initial_cost
      t.string :item_img
      t.string :ASIN

      t.timestamps
    end
  end
end
