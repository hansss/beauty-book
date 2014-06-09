class Salon < ActiveRecord::Base
  attr_accessible :address, :closing_time, :description, :name, :opening_time, :phone, :profile_image, :website_url

  has_many :stylists
  has_many :images
  has_and_belongs_to_many :users

end
