class SalonsController < ApplicationController
  # before_filter :authenticate_user!
  def index
    @salons = Salon.all
  end

  def show
    @salon = Salon.find(params[:id])
  end

  


end