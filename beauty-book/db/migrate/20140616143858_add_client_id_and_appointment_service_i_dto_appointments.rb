class AddClientIdAndAppointmentServiceIDtoAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :client_id, :integer
    add_column :appointments, :appointment_service_id, :integer
  end
end
