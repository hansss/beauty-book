module ApplicationHelper

 def header_path
    current_user ? user_path(current_user) : root_path
  end

  def user_menu
    if current_user
      if current_user.role == "salon"
        render "layouts/menu_salon"
      elsif current_user.role == "user"
        render "layouts/menu_user"
      end
    end
  end

  def link_to_add_fields(name, f, association)  
    new_object = f.object.class.reflect_on_association(association).klass.new  
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|  
      render(association.to_s.singularize + "_fields", :f => builder)  
    end  
    link_to_function(name, ("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"))
  end  
end

