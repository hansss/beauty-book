class StylistsController < ApplicationController
  # before_filter :authenticate_user!
  before_filter :load_salon

  def new
    @stylist = @salon.stylists.build
  end

  def create
    @stylist = @salon.stylists.build(params[:stylist])
    respond_to do |format|
      if @stylist.save
        format.html { redirect_to @salon, notice: 'Stylist was successfully added.' }
        format.json { render json: @user, status: :created, location: @stylist }
      else
        format.html { render action: "new" }
        format.json { render json: @stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @stylists = Stylist.all
  end


private
def load_salon
  @salon = Salon.find(params[:salon_id])
end

end