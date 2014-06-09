class Service < ActiveRecord::Base
  attr_accessible :description, :duration, :title

  has_many :stylists, through: :stylistservices
  accepts_nested_attributes_for :stylistservices
end
