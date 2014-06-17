class AppointmentsController < ApplicationController
  def index

  end

  def new
    @appointment = Appointment.new(appointment_service_id: params[:appointment_service_id])

  end

  def create
    @appointment = Appointment.create({date: params[:appointment][:date], client_id: current_user.id, appointment_service_id: params[:appointment][:appointment_service_id]})
    
    redirect_to current_user
  end




end