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

ActiveRecord::Schema.define(:version => 20120625012632) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "mail_id"
  end

  create_table "system_metrics", :force => true do |t|
    t.string   "name",               :null => false
    t.datetime "started_at",         :null => false
    t.string   "transaction_id"
    t.text     "payload"
    t.float    "duration",           :null => false
    t.float    "exclusive_duration", :null => false
    t.integer  "request_id"
    t.integer  "parent_id"
    t.string   "action",             :null => false
    t.string   "category",           :null => false
  end

  create_table "user_profile", :force => true do |t|
    t.string  "name"
    t.integer "count"
  end

  create_table "votes", :force => true do |t|
    t.integer  "voter_id"
    t.integer  "candidate_id"
    t.text     "comment"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
