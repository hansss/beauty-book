class AddProfileImageToSalons < ActiveRecord::Migration
  def change
    add_column :salons, :profile_image, :string
  end
end
