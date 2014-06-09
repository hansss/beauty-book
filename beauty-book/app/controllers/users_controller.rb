class UsersController < ApplicationController
  # before_filter :authenticate_user!
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit

  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      format.json {head :no_content}
      if @user.update_attributes(params[:user])
        format.html {redirect_to user_path(@user), notice: 'Your information has been succesfully saved!'}
        format.json {head :no_content}
      else
        format.html{render action: "edit"}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end



end