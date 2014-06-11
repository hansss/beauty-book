class CreateFavoritedSalons < ActiveRecord::Migration
  def change
    create_table :favorited_salons do |t|
      t.integer :salon_id
      t.integer :user_id

      t.timestamps
    end
  end
end
