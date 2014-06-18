class FavoritedSalon < ActiveRecord::Base
  attr_accessible :salon_id, :user_id

  belongs_to :salon
  belongs_to :user

  validates :salon_id, presence: true
  validates :user_id, presence: true
end
