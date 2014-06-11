class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :cellphone, :email, :first_name, :last_name


  has_many :appointments
  has_and_belongs_to_many :salons
  has_many :stylistservices
  has_one :managed_salon, class_name: 'Salon', foreign_key: :manager_id

  after_save :setup_salon
  
  def sorted_phone_number
    Phoner::Phone.parse(phone)
  end

  def role?(role)
    self.role.to_s == role.to_s
  end

  def full_name
    first_name + " " + last_name
  end


  private
  def setup_salon
    if role? :salon
      create_managed_salon unless managed_salon
    end
  end

  
  


end
