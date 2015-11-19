# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151118122856) do

  create_table "daily_usages", force: :cascade do |t|
    t.integer  "utility_no",   limit: 4
    t.date     "date"
    t.float    "total_usage",  limit: 24
    t.float    "total_charge", limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "energies", force: :cascade do |t|
    t.date     "year"
    t.float    "value",      limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "monthly_usages", force: :cascade do |t|
    t.integer  "utility_no",   limit: 4
    t.date     "date"
    t.float    "total_usage",  limit: 24
    t.float    "total_charge", limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "property_infos", force: :cascade do |t|
    t.integer  "zip_id",                  limit: 4
    t.string   "home_type",               limit: 255
    t.integer  "bed_rooms",               limit: 4
    t.integer  "bath_rooms",              limit: 4
    t.float    "finished_square_footage", limit: 24
    t.float    "lot_size_square_footage", limit: 24
    t.date     "year_build"
    t.date     "year_updated"
    t.integer  "number_of_floors",        limit: 4
    t.string   "basement",                limit: 255
    t.string   "roof_type",               limit: 255
    t.string   "view",                    limit: 255
    t.string   "parking_type",            limit: 255
    t.string   "heating_sources",         limit: 255
    t.string   "heating_system",          limit: 255
    t.string   "appliances",              limit: 255
    t.string   "floor_covering",          limit: 255
    t.string   "rooms",                   limit: 255
    t.string   "images",                  limit: 255
    t.string   "street_address",          limit: 255
    t.integer  "zipcode",                 limit: 4
    t.string   "city",                    limit: 255
    t.string   "state",                   limit: 255
    t.string   "latitude",                limit: 255
    t.string   "longitude",               limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "raw_usages", force: :cascade do |t|
    t.integer  "utility_no",   limit: 4
    t.date     "date"
    t.float    "total_usage",  limit: 24
    t.float    "total_charge", limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "name",                   limit: 255
    t.integer  "role",                   limit: 4
    t.string   "last_name",              limit: 255,   default: "", null: false
    t.string   "prefix",                 limit: 255,   default: "", null: false
    t.string   "suffix",                 limit: 255,   default: "", null: false
    t.string   "title",                  limit: 255,   default: "", null: false
    t.text     "street1",                limit: 65535
    t.text     "street2",                limit: 65535
    t.string   "city",                   limit: 255,   default: "", null: false
    t.string   "state",                  limit: 255,   default: "", null: false
    t.string   "country",                limit: 255,   default: "", null: false
    t.integer  "zip",                    limit: 8,     default: 0,  null: false
    t.integer  "phone",                  limit: 8,     default: 0,  null: false
    t.integer  "fax",                    limit: 8,     default: 0,  null: false
    t.string   "nick_name",              limit: 255,   default: "", null: false
    t.string   "group",                  limit: 255,   default: "", null: false
    t.integer  "rate_code",              limit: 8
    t.string   "ac_type",                limit: 255,   default: "", null: false
    t.integer  "ac_no",                  limit: 8
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_utility_accounts", id: false, force: :cascade do |t|
    t.integer "user_id",            limit: 4, null: false
    t.integer "utility_account_id", limit: 4, null: false
  end

  add_index "users_utility_accounts", ["user_id", "utility_account_id"], name: "index_users_utility_accounts_on_user_id_and_utility_account_id", using: :btree
  add_index "users_utility_accounts", ["utility_account_id", "user_id"], name: "index_users_utility_accounts_on_utility_account_id_and_user_id", using: :btree

  create_table "utility_accounts", force: :cascade do |t|
    t.integer  "account_no",   limit: 4
    t.string   "utility_name", limit: 255
    t.text     "address",      limit: 65535
    t.integer  "zip_code",     limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "utility_infos", force: :cascade do |t|
    t.integer  "utility_no",      limit: 8
    t.string   "utility_name",    limit: 255
    t.string   "utility_company", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "yearly_usages", force: :cascade do |t|
    t.integer  "utility_no",   limit: 4
    t.date     "date"
    t.float    "total_usage",  limit: 24
    t.float    "total_charge", limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
