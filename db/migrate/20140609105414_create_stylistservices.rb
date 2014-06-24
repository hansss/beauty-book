class CreateStylistservices < ActiveRecord::Migration
  def change
    create_table :stylistservices do |t|
      t.integer :stylist_id
      t.integer :service_id
      t.float :cost
      t.string :pricing_type

      t.timestamps
    end
  end
end
