class RegistrationsController < Devise::RegistrationsController  
  def create
    super
    if params[:salon]
      @user.role = :salon
      @user.save
    end
  end
end