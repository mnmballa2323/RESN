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

ActiveRecord::Schema.define(version: 2019_11_15_185033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friend_lists", force: :cascade do |t|
    t.string "friend_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_friend_lists_on_profile_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.integer "user_id"
    t.integer "chat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "rental_listing_amenity_infos", force: :cascade do |t|
    t.boolean "essentails"
    t.boolean "air_conditioning"
    t.boolean "heat"
    t.boolean "hair_drryer"
    t.boolean "closet"
    t.boolean "iron"
    t.boolean "tv"
    t.boolean "breakfast"
    t.boolean "wifi"
    t.boolean "fire_ex"
    t.boolean "carbon_det"
    t.boolean "smoke_det"
    t.boolean "first_aid"
    t.bigint "rental_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_list_id"], name: "index_rental_listing_amenity_infos_on_rental_list_id"
  end

  create_table "rental_listing_bedrooms", force: :cascade do |t|
    t.string "type"
    t.bigint "rental_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_list_id"], name: "index_rental_listing_bedrooms_on_rental_list_id"
  end

  create_table "rental_listing_common_spaces", force: :cascade do |t|
    t.string "type"
    t.bigint "rental_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_list_id"], name: "index_rental_listing_common_spaces_on_rental_list_id"
  end

  create_table "rental_listing_images", force: :cascade do |t|
    t.string "url"
    t.bigint "rental_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_list_id"], name: "index_rental_listing_images_on_rental_list_id"
  end

  create_table "rental_listing_space_usages", force: :cascade do |t|
    t.boolean "kitchen"
    t.boolean "laundry_washer"
    t.boolean "laundry_dryer"
    t.boolean "parking"
    t.boolean "gym"
    t.boolean "pool"
    t.boolean "hot_tub"
    t.boolean "elevator"
    t.bigint "rental_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_list_id"], name: "index_rental_listing_space_usages_on_rental_list_id"
  end

  create_table "rental_lists", force: :cascade do |t|
    t.string "room_type"
    t.string "person_capicty"
    t.string "location"
    t.string "propert_type"
    t.string "property_type_cat"
    t.boolean "is_dedicated"
    t.string "guest_no_acc"
    t.string "beedrooms_guest_use"
    t.string "bathrooms_guest_no"
    t.string "address"
    t.string "city"
    t.string "postal_code"
    t.string "state"
    t.string "country"
    t.string "descritption"
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rental_lists_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "chat_id"
    t.integer "user_id"
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
  add_foreign_key "rental_listing_amenity_infos", "rental_lists"
  add_foreign_key "rental_listing_bedrooms", "rental_lists"
  add_foreign_key "rental_listing_common_spaces", "rental_lists"
  add_foreign_key "rental_listing_images", "rental_lists"
  add_foreign_key "rental_listing_space_usages", "rental_lists"
  add_foreign_key "rental_lists", "users"
end
