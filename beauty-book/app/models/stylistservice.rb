class Stylistservice < ActiveRecord::Base
  attr_accessible :cost, :pricing_type, :service_id, :stylist_id

  belongs_to :user
  belongs_to :stylist
  belongs_to :service
  has_many :appointments

end
