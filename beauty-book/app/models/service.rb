class Service < ActiveRecord::Base
  attr_accessible :description, :duration, :title, :stylist_services, :stylist_services_attributes


  belongs_to :salons
  has_many :stylist_services
  has_many :stylists, through: :stylist_services
  accepts_nested_attributes_for :stylist_services
  


end
