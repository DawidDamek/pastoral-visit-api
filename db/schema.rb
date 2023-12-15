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

ActiveRecord::Schema[7.1].define(version: 2023_12_13_224120) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devise_api_tokens", force: :cascade do |t|
    t.string "resource_owner_type", null: false
    t.bigint "resource_owner_id", null: false
    t.string "access_token", null: false
    t.string "refresh_token"
    t.integer "expires_in", null: false
    t.datetime "revoked_at"
    t.string "previous_refresh_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token"], name: "index_devise_api_tokens_on_access_token"
    t.index ["previous_refresh_token"], name: "index_devise_api_tokens_on_previous_refresh_token"
    t.index ["refresh_token"], name: "index_devise_api_tokens_on_refresh_token"
    t.index ["resource_owner_type", "resource_owner_id"], name: "index_devise_api_tokens_on_resource_owner"
  end

  create_table "requests", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "house_members_count"
    t.datetime "schedule"
    t.string "city"
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
    t.string "description"
    t.string "phone_number"
    t.string "photo_url"
    t.string "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visits", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "house_members_count"
    t.datetime "schedule"
    t.string "city"
    t.string "street"
    t.string "number"
    t.string "subnumber"
    t.string "zip_code"
    t.string "country"
    t.string "email"
    t.string "phone_number"
    t.string "status"
    t.bigint "request_id"
    t.bigint "priest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["priest_id"], name: "index_visits_on_priest_id"
    t.index ["request_id"], name: "index_visits_on_request_id"
  end

  add_foreign_key "visits", "requests"
  add_foreign_key "visits", "users", column: "priest_id"
end
