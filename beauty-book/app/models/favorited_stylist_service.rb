class FavoritedStylistService < ActiveRecord::Base
  attr_accessible :stylist_service_id, :user_id



  belongs_to :user
  belongs_to :stylist_service

  validates :stylist_service_id, presence: true
  validates :user_id, presence: true
end
