class CreateSalonServices < ActiveRecord::Migration
  def change
    create_table :salon_services do |t|
      t.integer :salon_id
      t.integer :service_id

      t.timestamps
    end
  end
end
