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

ActiveRecord::Schema[7.0].define(version: 2022_06_02_142637) do
  create_table "car_categories", force: :cascade do |t|
    t.string "name"
    t.decimal "daily_rate"
    t.decimal "car_insurance"
    t.decimal "third_part_insurance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_models", force: :cascade do |t|
    t.string "name"
    t.integer "manufacturer_id", null: false
    t.integer "car_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fuel_type"
    t.string "motorization"
    t.integer "year"
    t.index ["car_category_id"], name: "index_car_models_on_car_category_id"
    t.index ["manufacturer_id"], name: "index_car_models_on_manufacturer_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "car_models", "car_categories"
  add_foreign_key "car_models", "manufacturers"
end
