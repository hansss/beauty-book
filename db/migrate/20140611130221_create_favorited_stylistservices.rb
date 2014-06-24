class CreateFavoritedStylistservices < ActiveRecord::Migration
  def change
    create_table :favorited_stylistservices do |t|
      t.integer :stylistservice_id
      t.integer :user_id

      t.timestamps
    end
  end
end
