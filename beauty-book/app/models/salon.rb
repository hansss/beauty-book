class Salon < ActiveRecord::Base
  attr_accessible :address, :closing_time, :description, :name, :opening_time, :phone, :profile_image, :website_url, :postal_code, :city

  has_many :stylists
  has_many :images
  has_and_belongs_to_many :users
  belongs_to :category
  belongs_to :manager, class_name: 'User'

  def sorted_phone_number
    Phoner::Phone.parse(phone)
  end

  def opening_time_string
    opening_time.strftime("%H:%M %p") if opening_time?
  end

  def closing_time_string
    closing_time.strftime("%H:%M %p") if closing_time?
  end

end
