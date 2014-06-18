class ServicesController < ApplicationController
  before_filter :load_salon
  # authorize_resource
  def new
    @service = @salon.services.build
    @service.stylist_services.build
    @salons_stylists = @salon.stylists.all
  end

  def create

    @service = @salon.services.create(params[:service])
    if @service.errors
      @salons_stylists = @salon.stylists.all
      render :new
    else
      redirect_to current_user
    end
  end

  def show
    @service = @salon.services.find(params[:id])
  end

  def edit
    @service = Service.find(params[:id])
    @salons_stylists = @salon.stylists.all
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(params[:service])
      redirect_to current_user, notice: "Updated."
    else
      render 'edit'
    end
  end

  def destroy
    @service = @salon.services.find(params[:id])
    @service.destroy
    redirect_to current_user
  end

  private
  def load_salon
    @salon = Salon.find(params[:salon_id])
  end

end