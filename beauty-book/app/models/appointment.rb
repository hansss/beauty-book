class Appointment < ActiveRecord::Base
  attr_accessible :date, :end_time, :start_time

  belongs_to :user
  belongs_to :stylist_service

  # opening time, clashing with other appointments, stylist is free
end
