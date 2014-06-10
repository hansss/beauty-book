class Salon < ActiveRecord::Base
  attr_accessible :address, :closing_time, :description, :name, :opening_time, :phone, :profile_image, :website_url

  has_many :stylists
  has_many :images
  has_and_belongs_to_many :users

  def opening_time_string
    opening_time.strftime("%H:%M %p")
  end

  def closing_time_string
    closing_time.strftime("%H:%M %p")
  end

end
