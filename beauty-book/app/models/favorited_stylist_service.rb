class FavoritedStylistService < ActiveRecord::Base
  attr_accessible :stylist_service_id, :user_id, :user

  belongs_to :user
  belongs_to :stylist_service
end
