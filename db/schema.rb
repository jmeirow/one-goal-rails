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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140111184816) do

  create_table "action_steps", force: true do |t|
    t.string   "description"
    t.date     "target_date"
    t.date     "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "goal_id"
  end

  create_table "administrators", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buddies", force: true do |t|
    t.integer  "member_id_1"
    t.integer  "member_id_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "area"
    t.string   "division"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", force: true do |t|
    t.integer  "user_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "note"
  end

  create_table "logins", force: true do |t|
    t.integer  "user_id"
    t.time     "login_date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "wants_a_buddy"
    t.string   "club_name"
    t.integer  "user_id"
    t.string   "display_name"
  end

  create_table "session_counts", force: true do |t|
    t.integer  "user_id"
    t.datetime "login_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_texts", force: true do |t|
    t.string   "key"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "password_reset_token"
    t.string   "auth_token"
    t.datetime "password_reset_sent_at"
  end

  create_table "web_resources", force: true do |t|
    t.string   "url"
    t.string   "description"
    t.integer  "recommending_member_id", limit: 255
    t.string   "status"
    t.string   "declined_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
