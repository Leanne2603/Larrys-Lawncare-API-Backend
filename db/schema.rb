# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_25_033007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "email"
    t.string "address"
    t.date "booking_date"
    t.text "notes"
    t.bigint "suburb_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["suburb_id"], name: "index_bookings_on_suburb_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "postcodes", force: :cascade do |t|
    t.string "postcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "service"
    t.string "price"
    t.bigint "booking_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_services_on_booking_id"
    t.index ["category_id"], name: "index_services_on_category_id"
  end

  create_table "suburbs", force: :cascade do |t|
    t.string "suburb"
    t.bigint "postcode_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["postcode_id"], name: "index_suburbs_on_postcode_id"
  end

  add_foreign_key "bookings", "suburbs"
  add_foreign_key "services", "bookings"
  add_foreign_key "services", "categories"
  add_foreign_key "suburbs", "postcodes"
end
