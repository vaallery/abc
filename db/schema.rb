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

ActiveRecord::Schema.define(version: 2018_05_18_170600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "adverts", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "booking_configurations", force: :cascade do |t|
    t.bigint "booking_id"
    t.bigint "configuration_id"
    t.integer "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_configurations_on_booking_id"
    t.index ["configuration_id"], name: "index_booking_configurations_on_configuration_id"
  end

  create_table "booking_statuses", force: :cascade do |t|
    t.string "name"
    t.boolean "start"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "adults_count"
    t.integer "children_count"
    t.integer "rooms_count"
    t.string "comment"
    t.date "arrival_date"
    t.time "arrival_time"
    t.date "departure_date"
    t.time "departure_time"
    t.string "status"
    t.string "review_key"
    t.integer "total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "configurations", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "stay_time_id"
    t.integer "guests_count"
    t.integer "cost"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_configurations_on_room_id"
    t.index ["stay_time_id"], name: "index_configurations_on_stay_time_id"
  end

  create_table "configurations_services", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "configuration_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["configuration_id"], name: "index_configurations_services_on_configuration_id"
    t.index ["service_id"], name: "index_configurations_services_on_service_id"
  end

  create_table "directions", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.text "description"
    t.string "slug"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distances", force: :cascade do |t|
    t.bigint "hotel_id"
    t.bigint "place_id"
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_distances_on_hotel_id"
    t.index ["place_id"], name: "index_distances_on_place_id"
  end

  create_table "hotel_categories", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "hotel_category"
    t.float "latitude"
    t.float "longitude"
    t.text "description"
    t.string "slug"
    t.string "address"
    t.string "phone"
    t.boolean "for_main_page", default: false
    t.boolean "active", default: true
    t.string "images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels_directions", force: :cascade do |t|
    t.bigint "hotel_id"
    t.bigint "direction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["direction_id"], name: "index_hotels_directions_on_direction_id"
    t.index ["hotel_id"], name: "index_hotels_directions_on_hotel_id"
  end

  create_table "hotels_services", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_hotels_services_on_hotel_id"
    t.index ["service_id"], name: "index_hotels_services_on_service_id"
  end

  create_table "metro_lines", force: :cascade do |t|
    t.bigint "direction_id"
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["direction_id"], name: "index_metro_lines_on_direction_id"
  end

  create_table "place_categories", force: :cascade do |t|
    t.string "name"
    t.integer "tag"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.bigint "place_category_id"
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.text "description"
    t.string "slug"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_category_id"], name: "index_places_on_place_category_id"
  end

  create_table "places_directions", force: :cascade do |t|
    t.bigint "place_id"
    t.bigint "direction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["direction_id"], name: "index_places_directions_on_direction_id"
    t.index ["place_id"], name: "index_places_directions_on_place_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "booking_id"
    t.bigint "hotel_id"
    t.string "positive"
    t.string "negative"
    t.integer "score_location"
    t.integer "score_services"
    t.integer "score_clean"
    t.integer "score_value"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["hotel_id"], name: "index_reviews_on_hotel_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "hotel_id"
    t.string "name"
    t.string "description"
    t.string "services_description"
    t.integer "square"
    t.string "bed"
    t.integer "bed1"
    t.integer "bed2"
    t.integer "rooms"
    t.boolean "additional_bed"
    t.boolean "active", default: true
    t.string "images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
  end

  create_table "rooms_adverts", force: :cascade do |t|
    t.bigint "advert_id"
    t.bigint "room_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["advert_id"], name: "index_rooms_adverts_on_advert_id"
    t.index ["room_id"], name: "index_rooms_adverts_on_room_id"
  end

  create_table "rooms_services", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_rooms_services_on_room_id"
    t.index ["service_id"], name: "index_rooms_services_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "tag"
    t.boolean "for_hotel"
    t.boolean "for_room"
    t.boolean "for_configuration"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stay_times", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "booking_configurations", "bookings"
  add_foreign_key "booking_configurations", "configurations"
  add_foreign_key "configurations", "rooms"
  add_foreign_key "configurations", "stay_times"
  add_foreign_key "configurations_services", "configurations"
  add_foreign_key "configurations_services", "services"
  add_foreign_key "distances", "hotels"
  add_foreign_key "distances", "places"
  add_foreign_key "hotels_directions", "directions"
  add_foreign_key "hotels_directions", "hotels"
  add_foreign_key "hotels_services", "hotels"
  add_foreign_key "hotels_services", "services"
  add_foreign_key "metro_lines", "directions"
  add_foreign_key "places", "place_categories"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "hotels"
  add_foreign_key "rooms", "hotels"
  add_foreign_key "rooms_adverts", "adverts"
  add_foreign_key "rooms_adverts", "rooms"
  add_foreign_key "rooms_services", "rooms"
  add_foreign_key "rooms_services", "services"
end
