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

ActiveRecord::Schema.define(:version => 20130107180637) do

  create_table "bids", :force => true do |t|
    t.integer  "user_id"
    t.integer  "car_id"
    t.integer  "bidding"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bids", ["car_id"], :name => "index_bids_on_car_id"
  add_index "bids", ["user_id"], :name => "index_bids_on_user_id"

  create_table "brands", :force => true do |t|
    t.string   "Name"
    t.text     "Description"
    t.integer  "Manufacturer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", :force => true do |t|
    t.string   "VIN"
    t.integer  "Year"
    t.integer  "Manufacturer_id"
    t.integer  "Brand_id"
    t.string   "State"
    t.string   "Details"
    t.integer  "Price"
    t.integer  "bid_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cars", ["Manufacturer_id"], :name => "index_cars_on_Manufacturer_id"

  create_table "manufacturers", :force => true do |t|
    t.string   "Name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "Name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.text     "address"
    t.integer  "telephone"
    t.date     "DOB"
    t.integer  "bid_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["bid_id"], :name => "index_users_on_bid_id"

end
