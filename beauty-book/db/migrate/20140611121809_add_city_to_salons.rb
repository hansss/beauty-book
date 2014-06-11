class AddCityToSalons < ActiveRecord::Migration
  def change
    add_column :salons, :city, :string
  end
end
