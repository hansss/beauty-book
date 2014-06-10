class UsersController < ApplicationController
  # before_filter :authenticate_user!
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def salon_signup_info
    @user = User.find(params[:id])
  end




end