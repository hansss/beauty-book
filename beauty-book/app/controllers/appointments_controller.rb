class AppointmentsController < ApplicationController
  load_and_authorize_resource

  def index

  end

  def new
    @appointment = Appointment.new(appointment_service_id: params[:appointment_service_id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update_attributes(params[:appointment])
      redirect_to current_user, notice: "Updated"
    else
      render 'edit'
    end
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    @appointment.client_id = current_user.id
    @appointment.save
    redirect_to current_user
  end




end