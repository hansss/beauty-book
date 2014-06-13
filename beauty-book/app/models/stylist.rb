class Stylist < ActiveRecord::Base
  attr_accessible :description, :email, :first_name, :last_name, :mobile, :profile_image

  belongs_to :salon
  has_many :stylist_services
  has_many :services, through: :stylist_services
end
