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

ActiveRecord::Schema.define(version: 2021_11_19_224824) do

  create_table "applicants", force: :cascade do |t|
    t.boolean "approved", default: false
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
    t.integer "user_id"
    t.index ["event_id"], name: "index_applicants_on_event_id"
    t.index ["user_id"], name: "index_applicants_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "event_id"
    t.integer "my_id"
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["my_id"], name: "index_comments_on_my_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.integer "age_range"
    t.text "note"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "participant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "location_id"
    t.integer "sport_id"
    t.integer "user_id"
    t.index ["location_id"], name: "index_events_on_location_id"
    t.index ["sport_id"], name: "index_events_on_sport_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "friends", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "my_id"
    t.integer "friend_id"
    t.index ["friend_id"], name: "index_friends_on_friend_id"
    t.index ["my_id"], name: "index_friends_on_my_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "country"
    t.string "region"
    t.string "county"
    t.string "address"
    t.boolean "available", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "event_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "event_id"
    t.integer "my_id"
    t.index ["event_id"], name: "index_notifications_on_event_id"
    t.index ["my_id"], name: "index_notifications_on_my_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "phone_number"
    t.integer "age"
    t.text "note"
    t.integer "tag"
    t.integer "role"
    t.boolean "vip", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "location_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["location_id"], name: "index_users_on_location_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
