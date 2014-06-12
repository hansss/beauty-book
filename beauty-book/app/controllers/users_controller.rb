class UsersController < ApplicationController
  # before_filter :authenticate_user!
  def index
  end

  def show
    @user = User.find(params[:id])
    @managed_salon = @user.managed_salon if @user.role == "salon"
  end

  def salon_signup_info
    @user = User.find(params[:id])
  end




end