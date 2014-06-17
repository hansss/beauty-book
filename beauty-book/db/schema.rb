# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140616164113) do

  create_table "appointments", :force => true do |t|
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "client_id"
    t.integer  "appointment_service_id"
    t.string   "date_string"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "category_salons", :force => true do |t|
    t.integer  "category_id"
    t.integer  "salon_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "favorited_salons", :force => true do |t|
    t.integer  "salon_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "favorited_stylist_services", :force => true do |t|
    t.integer  "stylist_service_id"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "fullcalendar_engine_event_series", :force => true do |t|
    t.integer  "frequency",  :default => 1
    t.string   "period",     :default => "monthly"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",    :default => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "fullcalendar_engine_events", :force => true do |t|
    t.string   "title"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",         :default => false
    t.text     "description"
    t.integer  "event_series_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "fullcalendar_engine_events", ["event_series_id"], :name => "index_fullcalendar_engine_events_on_event_series_id"

  create_table "images", :force => true do |t|
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "salon_id"
    t.string   "image_file"
  end

  create_table "salons", :force => true do |t|
    t.string   "name"
    t.time     "opening_time"
    t.time     "closing_time"
    t.string   "website_url"
    t.string   "phone"
    t.text     "address"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "profile_image"
    t.integer  "manager_id"
    t.string   "postal_code"
    t.string   "city"
  end

  create_table "services", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "duration"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "salon_id"
  end

  create_table "stylist_services", :force => true do |t|
    t.integer  "stylist_id"
    t.integer  "service_id"
    t.float    "cost"
    t.string   "pricing_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "stylists", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "mobile"
    t.text     "description"
    t.string   "profile_image"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "salon_id"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "cellphone"
    t.string   "profile_image"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "email",                  :default => "",     :null => false
    t.string   "encrypted_password",     :default => "",     :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,      :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "role",                   :default => "user"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
