class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.text :description
      t.string :profile_image

      t.timestamps
    end
  end
end
