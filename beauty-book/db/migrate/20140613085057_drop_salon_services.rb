class DropSalonServices < ActiveRecord::Migration
  def up
    drop_table :salon_services
  end

  def down
    create_table :salon_services do |t|
      t.integer :salon_id
      t.integer :service_id

      t.timestamps
    end
  end
end
