class SalonsController < ApplicationController
  # before_filter :authenticate_user!
  def index
    @salons = Salon.all
  end

  def show
    @salon = Salon.find(params[:id])
    @services = @salon.services
    @image = @salon.images.first.image_file
  end

  def edit
    @salon = Salon.find(params[:id])
    @categories = Category.all
    @salon.images.build
  end

  def update
    @salon = Salon.find(params[:id])
   
    respond_to do |format|
      if @salon.update_attributes(params[:salon])
        format.html { redirect_to @salon, notice: 'Salon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @salon.errors, status: :unprocessable_entity }
      end
    end
  end
  


end