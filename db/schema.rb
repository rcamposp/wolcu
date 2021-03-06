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

ActiveRecord::Schema.define(version: 20160512191854) do

  create_table "cities", force: :cascade do |t|
    t.string  "name",    limit: 255
    t.integer "zone_id", limit: 4
    t.boolean "status"
  end

  add_index "cities", ["zone_id"], name: "index_cities_on_zone_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "name",        limit: 255
    t.string   "description", limit: 2000
    t.date     "date"
    t.time     "time"
    t.string   "image",       limit: 255
  end

  create_table "order_tickets", force: :cascade do |t|
    t.integer  "order_id",    limit: 4
    t.string   "ticket_name", limit: 255
    t.decimal  "price",                   precision: 10
    t.string   "firstname",   limit: 255
    t.string   "lastname",    limit: 255
    t.string   "email",       limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "order_tickets", ["order_id"], name: "index_order_tickets_on_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.string   "firstname",      limit: 255
    t.string   "lastname",       limit: 255
    t.string   "email",          limit: 255
    t.string   "phone",          limit: 255
    t.string   "rut",            limit: 255
    t.string   "address",        limit: 255
    t.string   "country",        limit: 255
    t.string   "zone",           limit: 255
    t.string   "city",           limit: 255
    t.decimal  "subtotal",                   precision: 10
    t.decimal  "total",                      precision: 10
    t.integer  "status",         limit: 4
    t.string   "payment_method", limit: 255
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "event",          limit: 255
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "tickets", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 500
    t.decimal  "price",                   precision: 10, scale: 2
    t.integer  "quantity",    limit: 4
    t.integer  "event_id",    limit: 4
    t.boolean  "status",                                           default: true
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
  end

  add_index "tickets", ["event_id"], name: "index_tickets_on_event_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "firstname",              limit: 255
    t.string   "lastname",               limit: 255
    t.string   "phone",                  limit: 255
    t.string   "rut",                    limit: 255
    t.string   "address",                limit: 255
    t.integer  "country_id",             limit: 4
    t.integer  "zone_id",                limit: 4
    t.integer  "city_id",                limit: 4
  end

  add_index "users", ["city_id"], name: "index_users_on_city_id", using: :btree
  add_index "users", ["country_id"], name: "index_users_on_country_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["zone_id"], name: "index_users_on_zone_id", using: :btree

  create_table "zones", force: :cascade do |t|
    t.string  "name",       limit: 255
    t.integer "country_id", limit: 4
    t.boolean "status"
  end

  add_index "zones", ["country_id"], name: "index_zones_on_country_id", using: :btree

  add_foreign_key "cities", "zones"
  add_foreign_key "order_tickets", "orders"
  add_foreign_key "orders", "users"
  add_foreign_key "tickets", "events"
  add_foreign_key "users", "cities"
  add_foreign_key "users", "countries"
  add_foreign_key "users", "zones"
  add_foreign_key "zones", "countries"
end
