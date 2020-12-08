class CreateUserWatchItems < ActiveRecord::Migration[6.0]
  def change
    create_table :user_watch_items do |t|
      t.references :user, null: false, foreign_key: true
      t.references :watch_item, null: false, foreign_key: true
      t.integer :unitAmount, default: 1

      t.timestamps
    end
  end
end
