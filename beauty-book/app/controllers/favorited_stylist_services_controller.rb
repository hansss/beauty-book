class FavoritedStylistServicesController < ApplicationController
  
  def index
    @favorite_services = current_user.stylist_services
  end

  def create
    @favorited_stylist_service = FavoritedStylistService.new(stylist_service_id: params[:stylist_service], user: current_user)

    respond_to do |format|
      if @favorited_stylist_service.save
        format.js 
      else
        format.js 
        format.html { render action: "new" }
        format.json { render json: @favorited_stylist_service.errors, status: :unprocessable_entity }
      end
    end
  end

  

end