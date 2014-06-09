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

end
