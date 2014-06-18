class SalonsController < ApplicationController
  # before_filter :authenticate_user!
  def index
    @salons = Salon.all
    @q = Salon.search(params[:q])
    @salons = @q.result(:distinct => true).includes(:categories)
  end

  def show
    @salon = Salon.find(params[:id])
    @services = @salon.stylist_services
    @categories = []
    @salon.categories.each do |category|
      @categories << category.title
    end
    @image = @salon.images.first.image_file unless @salon.images.empty?
  end

  def edit
    @salon = Salon.find(params[:id])
    @categories = Category.all
    @salon.images.build
  end

  def update
    @salon = Salon.find(params[:id])
    images = params[:salon].delete(:images)
    @salon.images.destroy_all
    images.each do |image|
      @salon.images << Image.create(image_file: image)
    end
   
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