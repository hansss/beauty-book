class SalonService < ActiveRecord::Base
  attr_accessible :salon_id, :service_id

  belongs_to :salon
  belongs_to :service
end
