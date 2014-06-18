class Stylist < ActiveRecord::Base
  attr_accessible :description, :email, :first_name, :last_name, :mobile, :profile_image

  belongs_to :salon
  has_many :stylist_services, dependent: :destroy
  has_many :services, through: :stylist_services

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :mobile, presence: true

def full_name
  first_name + " " + last_name
end

end


