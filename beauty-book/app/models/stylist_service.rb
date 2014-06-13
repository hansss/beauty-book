class StylistService < ActiveRecord::Base
  attr_accessible :cost, :pricing_type, :service_id, :stylist_id

  belongs_to :stylist
  belongs_to :service


end
