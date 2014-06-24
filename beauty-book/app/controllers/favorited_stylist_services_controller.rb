class FavoritedStylistServicesController < ApplicationController
  load_and_authorize_resource :salon
  load_and_authorize_resource :favorited_stylist_service, :through => :salon
  
  def index
    @favorite_services = current_user.stylist_services
  end

  def create
    @salon = Salon.find(params[:salon_id])

    @favorited_stylist_service = FavoritedStylistService.new(stylist_service_id: params[:stylist_service_id], user_id: current_user.id)

    respond_to do |format|
      if @favorited_stylist_service.save
        format.js
        format.html { redirect_to @salon }
      else
        format.js 
        format.html { render action: "new" }
        format.json { render json: @favorited_stylist_service.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @salon = Salon.find(params[:salon_id])

    @favorited_stylist_service = current_user.favorited_stylist_services.where(stylist_service_id: params[:stylist_service_id]).first

    @favorited_stylist_service.destroy
    respond_to do |format|
      format.js {render :create}
      format.html { redirect_to @salon }
    end
  end

  

end