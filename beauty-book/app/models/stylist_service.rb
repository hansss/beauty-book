class StylistService < ActiveRecord::Base
  attr_accessible :cost, :pricing_type, :service_id, :stylist_id

  belongs_to :stylist
  belongs_to :service
  
  has_many :favorited_stylist_services, dependent: :destroy
  has_many :users, through: :favorited_stylist_services
  has_many :appointments, foreign_key: :appointment_service_id, dependent: :destroy
  has_many :clients, through: :appointments

  validates :cost, presence: true
  # validates :stylist_id, presence: true
  # validates :service_id, presence: true


end
