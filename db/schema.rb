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

ActiveRecord::Schema.define(version: 2019_11_17_143347) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "chats", force: :cascade do |t|
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.string "question", null: false
    t.string "answer", null: false
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_faqs_on_service_id"
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

  create_table "packages", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.integer "delivery_time", null: false
    t.integer "revisions", null: false
    t.decimal "price", null: false
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_packages_on_service_id"
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
    t.string "room_type"
    t.bigint "rental_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_list_id"], name: "index_rental_listing_bedrooms_on_rental_list_id"
  end

  create_table "rental_listing_common_spaces", force: :cascade do |t|
    t.string "space_type"
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
    t.text "description"
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rental_lists_on_user_id"
  end

  create_table "requirement_answers", force: :cascade do |t|
    t.string "answer"
    t.bigint "requirement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requirement_id"], name: "index_requirement_answers_on_requirement_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.string "description", null: false
    t.string "requirement_type", null: false
    t.boolean "is_mandatory", null: false
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_requirements_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title", null: false
    t.string "category", null: false
    t.text "description", null: false
    t.string "tags", array: true
    t.boolean "published", default: false, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "chat_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "profiles", "users"
  add_foreign_key "rental_listing_amenity_infos", "rental_lists"
  add_foreign_key "rental_listing_bedrooms", "rental_lists"
  add_foreign_key "rental_listing_common_spaces", "rental_lists"
  add_foreign_key "rental_listing_images", "rental_lists"
  add_foreign_key "rental_listing_space_usages", "rental_lists"
  add_foreign_key "rental_lists", "users"
end
