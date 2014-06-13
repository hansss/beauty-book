class RenameStylistservices < ActiveRecord::Migration
  def up
    rename_table :stylistservices, :stylist_services
  end

  def down
    rename_table :stylist_services, :stylistservices
  end
end
