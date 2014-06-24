class AddSalonIdToImage < ActiveRecord::Migration
  def change
    add_column :images, :salon_id, :integer
  end
end
