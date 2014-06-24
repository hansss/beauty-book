class RemoveFavoritedStylistServices < ActiveRecord::Migration
  def up
    drop_table :favorited_stylistservices
  end

  def down
    create_table :favorited_stylistservices do |t|
      t.integer :stylistservice_id
      t.integer :user_id

      t.timestamps
    end
  end
end
