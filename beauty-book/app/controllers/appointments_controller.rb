class AppointmentsController < ApplicationController
  def index

  end

  def new
    @appointment = Appointment.new(appointment_service_id: params[:appointment_service_id])

  end

  def create
    @appointment = Appointment.new(params[:appointment])
    @appointment.client_id = current_user.id
    @appointment.save
    redirect_to current_user
  end




end