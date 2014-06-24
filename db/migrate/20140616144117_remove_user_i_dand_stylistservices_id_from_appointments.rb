class RemoveUserIDandStylistservicesIdFromAppointments < ActiveRecord::Migration
  def up
    remove_column :appointments, :user_id
    remove_column :appointments, :stylistservices_id
  end

  def down
    add_column :appointments, :user_id, :integer
    add_column :appointments, :stylistservices_id, :integer
  end
end
