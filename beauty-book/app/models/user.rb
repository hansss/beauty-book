class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :cellphone, :email, :first_name, :last_name, :managed_salon_attributes, :role

  has_many :favorited_salons, dependent: :destroy
  has_many :salons, through: :favorited_salons
  has_many :favorited_stylist_services, dependent: :destroy
  has_many :stylist_services, through: :favorited_stylist_services
  has_many :appointments, foreign_key: :client_id
  has_many :appointment_services, through: :appointments
  has_one :managed_salon, class_name: 'Salon', foreign_key: :manager_id

  # validate :salon_is_valid_if_user_is_for_salon


  before_validation :setup_salon
  
  accepts_nested_attributes_for :managed_salon

  def sorted_phone_number
    Phoner::Phone.parse(phone)
  end

  def role?(role)
    self.role.to_s == role.to_s
  end

  def full_name
    first_name + " " + last_name
  end

  def appointment_description(appointment)
    appointment.appointment_service.service.title
  end


  private
  def setup_salon
    if role? :salon
      create_managed_salon unless managed_salon
    end
  end

  # private
  # def salon_is_valid_if_user_is_for_salon
  #   managed_salon.valid?
  #   managed_salon.errors.full_messages.each do |error|
  #     errors.add :salon, error
  #   end
  # end
  


end
