class AddManagerIdToSalons < ActiveRecord::Migration
  def change
    add_column :salons, :manager_id, :integer
  end
end
