class RemoveRoleFromSalonsAndStylists < ActiveRecord::Migration
   def up
    remove_column :salons, :role
    remove_column :stylists, :role
  end

  def down
    add_column :salons, :role, :string
    add_column :stylists, :role, :string
  end
end
