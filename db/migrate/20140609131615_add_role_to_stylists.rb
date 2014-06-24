class AddRoleToStylists < ActiveRecord::Migration
  def change
    add_column :stylists, :role, :string, default: "stylist"
  end
end
