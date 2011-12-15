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

ActiveRecord::Schema.define(:version => 20111214174101) do

  create_table "questions", :force => true do |t|
    t.integer  "quiz_id"
    t.string   "text"
    t.string   "answer_1"
    t.string   "answer_2"
    t.string   "answer_3"
    t.string   "answer_4"
    t.integer  "correct"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "video1"
    t.string   "video2"
    t.string   "video3"
    t.string   "video4"
  end

  create_table "quizzes", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "yt_id"
    t.string   "reward"
    t.datetime "reward_exp"
    t.string   "fb_page"
    t.string   "landing_page"
    t.integer  "coupons_left"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "codes"
    t.integer  "wins_count",    :default => 0
    t.string   "instruction"
    t.string   "reward_short"
    t.text     "custom_css"
    t.string   "company_name"
    t.string   "company_email"
    t.string   "google_anal"
    t.boolean  "ivideo"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_customers_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_customers_on_reset_password_token", :unique => true
  add_index "users", ["role"], :name => "index_users_on_role"

  create_table "wins", :force => true do |t|
    t.integer  "quiz_id"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

end
