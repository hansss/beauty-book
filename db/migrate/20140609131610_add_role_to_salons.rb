class AddRoleToSalons < ActiveRecord::Migration
  def change
    add_column :salons, :role, :string, default: "salon"
  end
end
