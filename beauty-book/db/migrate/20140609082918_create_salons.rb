class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.string :name
      t.time :opening_time
      t.time :closing_time
      t.string :website_url
      t.string :profile_image
      t.string :phone
      t.text :address
      t.text :description

      t.timestamps
    end
  end
end
