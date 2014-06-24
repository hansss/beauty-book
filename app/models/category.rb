class Category < ActiveRecord::Base
  attr_accessible :title, :category_salons

  has_many :category_salons
  has_many :salons, through: :category_salons
  

  validates :title, presence: true
end
