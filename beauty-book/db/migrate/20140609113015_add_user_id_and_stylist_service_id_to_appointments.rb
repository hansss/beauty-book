class AddUserIdAndStylistServiceIdToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :user_id, :integer
    add_column :appointments, :stylistservices_id, :integer

  end
end
