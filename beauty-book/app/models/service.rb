class Service < ActiveRecord::Base
  attr_accessible :description, :duration, :title

  has_many :salon_services
  has_many :salons, through: :salon_services
  accepts_nested_attributes_for :salon_services
end
