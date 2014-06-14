module ApplicationHelper

 def header_path
    current_user ? user_path(current_user) : root_path
  end

  def user_menu
    if current_user.role == "salon"
      render "layouts/menu_salon"
    elsif current_user.role == "user"
      render "layouts/menu_user"
    end
  end
end

