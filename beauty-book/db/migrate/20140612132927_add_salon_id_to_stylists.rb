class AddSalonIdToStylists < ActiveRecord::Migration
  def change
    add_column :stylists, :salon_id, :integer
  end
end
