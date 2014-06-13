class SalonServicesController < ApplicationController
  # before_filter :load_salon

  def new
    @salonservice = @salon.salonservices.build
  end

  # def create
  #   @salonservice = @salon.salonservices.build(params[:salonservice])
  #   respond_to do |format|
  #     if @salonservice.save
  #       format.html { redirect_to @user, notice: 'Stylist was successfully added.' }
  #       format.json { render json: @user, status: :created, location: @salon }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @salonservices.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  # private
  # def load_salon
  #   @salon = Salon.find(params[:salon_id])
  # end

end