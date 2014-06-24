class Image < ActiveRecord::Base
  attr_accessible :url, :image_file, :remove_image_file

  belongs_to :salon
  mount_uploader :image_file, ImageFileUploader

  
end
