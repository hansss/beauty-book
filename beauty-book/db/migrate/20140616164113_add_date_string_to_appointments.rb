class AddDateStringToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :date_string, :string
  end
end
