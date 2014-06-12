class CreateStylistSalonServices < ActiveRecord::Migration
  def change
    create_table :stylist_salon_services do |t|
      t.integer :stylist_id
      t.integer :salon_service_id

      t.timestamps
    end
  end
end
