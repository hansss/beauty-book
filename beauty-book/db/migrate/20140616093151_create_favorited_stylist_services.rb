class CreateFavoritedStylistServices < ActiveRecord::Migration
  def change
    create_table :favorited_stylist_services do |t|
      t.integer :stylist_service_id
      t.integer :user_id

      t.timestamps
    end
  end
end
