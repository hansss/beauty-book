class RegistrationsController < Devise::RegistrationsController  

  def new
    build_resource({})
    resource.build_managed_salon if params[:salon]
    respond_with self.resource
  end

  def create
    super do |user|
      if params[:salon]
        user.role = :salon
        user.save
      end
    end
  end

  # def after_sign_up_path_for(resource)
  #   if params[:salon]
  #     edit_salon_path(resource.managed_salon)
  #   else
  #     super
  #   end
  # end
end