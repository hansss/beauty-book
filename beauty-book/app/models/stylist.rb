class Stylist < ActiveRecord::Base
  attr_accessible :description, :email, :first_name, :last_name, :mobile, :profile_image

  belongs_to :salon
  has_many :stylistservices
  has_many :services, through: :stylistservices, dependent: :destroy
end
