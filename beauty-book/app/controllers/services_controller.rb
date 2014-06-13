class ServicesController < ApplicationController
  before_filter :load_salon

  def new
    @service = @salon.services.build
    @service.stylist_services.build
    @salons_stylists = @salon.stylists.all
  end

  def create
    @service = @salon.services.create(params[:service])
    redirect_to current_user
  end

  private
  def load_salon
    @salon = Salon.find(params[:salon_id])
  end

end