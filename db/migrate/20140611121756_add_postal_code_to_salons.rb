class AddPostalCodeToSalons < ActiveRecord::Migration
  def change
    add_column :salons, :postal_code, :string
  end
end
