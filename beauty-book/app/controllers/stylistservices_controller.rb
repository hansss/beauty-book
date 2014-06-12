class StylistservicesController < ApplicationController
  # before_filter :authenticate_user!
  before_filter :load_salon

  def new
    @stylistservice = @salon.stylistservices.build
  end

  def create
    @stylist = @salon.stylistservices.build(params[:stylistservice])
    respond_to do |format|
      if @stylistservice.save
        format.html { redirect_to @user, notice: 'Stylist was successfully added.' }
        format.json { render json: @user, status: :created, location: @stylist }
      else
        format.html { render action: "new" }
        format.json { render json: @stylistservices.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def load_salon
    @salon = Salon.find(params[:salon_id])
  end

end