class Ability
  include CanCan::Ability

  def initialize(user)
    
    user ||= User.new
    if user.role? :admin
      can :manage, :all
    elsif user.role? :salon
      can :read, Salon
      can :manage, Salon, id: user.managed_salon.id
      can :manage, Image, salon_id: user.managed_salon.id
      can :manage, User, id: user.id
      can :read, User, id: user.id
      can :manage, Appointment do |appointment|
        appointment.appointment_service.stylist.salon.id == user.managed_salon.id
      end
      can :manage, Stylist, salon: {id: user.managed_salon.id}
      can :manage, Service, salon: {id: user.managed_salon.id}
      can :manage, FavoritedStylistService, :salon => {:id=>user.managed_salon.id}
      
      #can only manage services where salon ID is salon's id
      #can only manage stylists where salon ID is salon's id
      #salon management not working
    elsif user.role? :user
      can :manage, User, id: user.id
      can :read, User, id: user.id
      can :read, Salon
      can :manage, Appointment, client_id: user.id
      can :manage, FavoritedStylistService, user_id: user.id
      #can manage favourite services if user id is user.id
    else
      can :create, User
    end

  end
end
