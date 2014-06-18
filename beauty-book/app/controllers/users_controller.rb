class UsersController < ApplicationController
  # before_filter :authenticate_user!
  # load_and_authorize_resource
  def index
  end

  def show
    @user = User.find(params[:id])
    @managed_salon = @user.managed_salon if @user.role == "salon"
    @favorited_stylist_services = @user.favorited_stylist_services
    @appointments = current_user.appointments
  end

  def salon_signup_info
    @user = User.find(params[:id])
  end




end