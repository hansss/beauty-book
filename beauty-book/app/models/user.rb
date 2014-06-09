class User < ActiveRecord::Base
  attr_accessible :cellphone, :email, :first_name, :last_name


  has_many :appointments
  has_and_belongs_to_many :salons
  has_many :stylistservices
end
