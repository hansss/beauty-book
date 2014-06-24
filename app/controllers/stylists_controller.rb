class StylistsController < ApplicationController
  # before_filter :authenticate_user!
  before_filter :load_salon
  authorize_resource :salon
  authorize_resource :stylist, through: :salon
  # load_and_authorize_resource :stylist

  def new
    @stylist = @salon.stylists.build
  end

  def create
    @stylist = @salon.stylists.build(params[:stylist])
    respond_to do |format|
      if @stylist.save
        format.html { redirect_to current_user, notice: 'Stylist was successfully added.' }
        format.json { render json: current_user, status: :created, location: @stylist }
      else
        format.html { render action: "new" }
        format.json { render json: @stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @stylists = Stylist.all
  end

  def edit
    @stylist = Stylist.find(params[:id])
  end

  def update
    @stylist = Stylist.find(params[:id])
    if @stylist.update_attributes(params[:stylist])
      redirect_to current_user, notice: "Updated."
    else
      render 'edit'
    end
  end

  def destroy
    @stylist = Stylist.find(params[:id])
    @stylist.destroy
    redirect_to current_user
  end


private
def load_salon
  @salon = Salon.find(params[:salon_id])
end

end