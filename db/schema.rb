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

ActiveRecord::Schema.define(version: 2019_10_31_190511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friend_lists", force: :cascade do |t|
    t.string "friend_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_friend_lists_on_profile_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "descrition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "iamge_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ph_no"
    t.string "twitter_add"
    t.string "facebook_add"
    t.string "linkedin_add"
    t.string "about_me"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "title"
    t.string "property_type"
    t.string "offer"
    t.string "rental_period"
    t.string "property_price"
    t.decimal "propert_area"
    t.integer "property_room"
    t.text "description"
    t.string "google_map_address"
    t.string "friendly_address"
    t.decimal "longtitude"
    t.decimal "latitude"
    t.string "region"
    t.string "building_year"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.decimal "lot_size"
    t.string "parking"
    t.string "cooling"
    t.string "sewer"
    t.string "water"
    t.string "exersie_room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "profiles", "users"
end
