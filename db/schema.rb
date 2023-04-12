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

ActiveRecord::Schema[7.0].define(version: 2023_04_07_173205) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "themes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "vehicle_id", null: false
    t.date "book_date"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_themes_on_user_id"
    t.index ["vehicle_id"], name: "index_themes_on_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.decimal "drive_fee"
    t.decimal "purchase_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "desc"
  end

  add_foreign_key "themes", "users"
  add_foreign_key "themes", "vehicles"
end
