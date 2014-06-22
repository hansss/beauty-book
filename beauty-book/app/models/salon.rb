class Salon < ActiveRecord::Base
  attr_accessible :address, :closing_time, :description, :name, :opening_time, :phone, :profile_image, :website_url, :postal_code, :city, :category_ids, :images, :images_attributes


  has_many :favorited_salons, dependent: :destroy
  has_many :users, through: :favorited_salons
  has_many :stylists, dependent: :destroy
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  has_many :category_salons
  has_many :categories, through: :category_salons
  accepts_nested_attributes_for :categories
  has_many :services, dependent: :destroy
  has_many :stylist_services, through: :services
  accepts_nested_attributes_for :services
  belongs_to :manager, class_name: 'User'

  validates :name, presence: true
  validates :opening_time, presence: true
  validates :closing_time, presence: true
  validates :address, presence: true
  validates :postal_code, presence: true
  validates :city, presence: true
  validates :phone, presence: true
  validates :image, presence: true

  def sorted_phone_number
    Phoner::Phone.parse(phone)
  end

  def opening_time_string
    opening_time.strftime("%H:%M %p") if opening_time?
  end

  def closing_time_string
    closing_time.strftime("%H:%M %p") if closing_time?
  end

  def hours
    if opening_time_string && closing_time_string
     opening_time_string + " - " + closing_time_string
   end
  end

  def full_address
    if address && postal_code && city
    address + "\n" + postal_code + ", " + city
  end
  end

  
end
