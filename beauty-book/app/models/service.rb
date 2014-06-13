class Service < ActiveRecord::Base
  attr_accessible :description, :duration, :title


  belongs_to :salons
  has_many :stylist_services
  has_many :stylists, through: :stylist_services
  


end
