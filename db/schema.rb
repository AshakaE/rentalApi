# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_17_173830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.string "createdBy"
    t.integer "price", null: false
    t.integer "duration"
    t.bigint "carId", null: false
    t.string "carName"
    t.string "carModel"
    t.bigint "userId", null: false
    t.string "userName"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "imageUrl"
    t.integer "year"
    t.index ["carId"], name: "index_bookings_on_carId"
    t.index ["userId"], name: "index_bookings_on_userId"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.integer "year"
    t.string "imageUrl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "cars", column: "carId"
  add_foreign_key "bookings", "users", column: "userId"
end
