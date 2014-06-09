class User < ActiveRecord::Base
  attr_accessible :cellphone, :email, :first_name, :last_name
end
