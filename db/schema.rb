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

ActiveRecord::Schema[7.1].define(version: 2023_12_04_183657) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "requests", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "house_members_count"
    t.datetime "schedule"
    t.string "street"
    t.string "number"
    t.string "subnumber"
    t.string "zip_code"
    t.string "country"
    t.string "email"
    t.string "phone_number"
    t.boolean "processed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "password"
    t.string "phone_number"
    t.string "photo_url"
    t.string "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "house_members_count"
    t.datetime "schedule"
    t.string "street"
    t.string "number"
    t.string "subnumber"
    t.string "zip_code"
    t.string "country"
    t.string "email"
    t.string "phone_number"
    t.string "status"
    t.bigint "visit_id", null: false
    t.bigint "priest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["priest_id"], name: "index_visits_on_priest_id"
    t.index ["visit_id"], name: "index_visits_on_visit_id"
  end

  add_foreign_key "visits", "users", column: "priest_id"
  add_foreign_key "visits", "visits"
end
