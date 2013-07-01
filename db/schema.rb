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

ActiveRecord::Schema.define(:version => 20130627191001) do

  create_table "blog_forum_post_comments", :force => true do |t|
    t.integer  "member_id"
    t.integer  "blog_forum_post_id"
    t.datetime "date_commented"
    t.text     "content"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "blog_forum_posts", :force => true do |t|
    t.integer  "member_id"
    t.string   "where_to_post"
    t.string   "subject"
    t.datetime "date_posted"
    t.text     "content"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "member_level"
    t.date     "member_since"
    t.date     "membership_expires"
    t.integer  "reward_points"
    t.boolean  "can_post"
    t.boolean  "admin"
    t.boolean  "opt_in"
    t.string   "password_digest"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "members_volunteer_events", :force => true do |t|
    t.integer  "member_id"
    t.integer  "volunteer_event_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "rewards", :force => true do |t|
    t.integer  "member_id"
    t.integer  "volunteer_event_id"
    t.text     "activity_description"
    t.integer  "points"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "volunteer_events", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
