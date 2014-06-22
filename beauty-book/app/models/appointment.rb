class Appointment < ActiveRecord::Base
  attr_accessible :date, :end_time, :start_time, :client_id, :appointment_service_id
  
  belongs_to :client, class_name: "User"
  belongs_to :appointment_service, class_name: "StylistService"

  # opening time, clashing with other appointments, stylist is free


  def readable_date
    date.strftime("%B %d, %Y")
  end

  def day_of_the_week
    date.strftime("%a")
  end

  def readable_time
    start_time.strftime("%l:%M %p")
  end

  validates :date, presence: true
  validates :start_time, presence: true, numericality: true


end
