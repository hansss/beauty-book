class CategorySalon < ActiveRecord::Base
  attr_accessible :category_id, :salon_id

  belongs_to :category
  belongs_to :salon

  validates_uniqueness_of :salon_id, :scope => :category_id
end
