class StylistService < ActiveRecord::Base
  attr_accessible :cost, :pricing_type, :service_id, :stylist_id

  belongs_to :stylist
  belongs_to :service
  
  has_many :favorited_stylist_services
  has_many :users, through: :favorited_stylist_services


end
