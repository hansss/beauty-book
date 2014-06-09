class Salon < ActiveRecord::Base
  attr_accessible :address, :closing_time, :description, :name, :opening_time, :phone, :profile_image, :website_url
end
