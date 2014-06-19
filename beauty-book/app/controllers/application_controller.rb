class ApplicationController < ActionController::Base
  protect_from_forgery

 protected
  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  protected
  def after_sign_up_path_for(resource)
    user_path(resource)
  end

  private
  helper_method :set_default_image
  def set_default_image(salon)
    image = salon.images.first.image_file unless salon.images.empty?
    image ? image : "/assets/spa_default.jpg"
  end

rescue_from CanCan::AccessDenied do |exception|
 redirect_to root_url , alert: "You can't access this page"
end


end
