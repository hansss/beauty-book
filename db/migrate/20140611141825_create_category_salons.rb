class CreateCategorySalons < ActiveRecord::Migration
  def change
    create_table :category_salons do |t|
      t.integer :category_id
      t.integer :salon_id

      t.timestamps
    end
  end
end
