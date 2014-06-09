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

  def role?(role)
    self.role.to_s == role.to_s
  end
end
