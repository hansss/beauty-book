class Salon < ActiveRecord::Base
  attr_accessible :address, :closing_time, :description, :name, :opening_time, :phone, :profile_image, :website_url, :postal_code, :city, :category_ids

  has_many :stylists
  has_many :images
  has_many :category_salons
  has_many :categories, through: :category_salons
  accepts_nested_attributes_for :categories
  has_many :salon_services
  has_many :services, through: :salon_services
  accepts_nested_attributes_for :services
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
