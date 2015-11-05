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

ActiveRecord::Schema.define(version: 20151105110722) do

  create_table "adjusters", force: :cascade do |t|
    t.string   "position",   limit: 255
    t.string   "status",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "primary_phone",       limit: 4
    t.integer  "primary_phone_ext",   limit: 4
    t.integer  "secondary_phone",     limit: 4
    t.integer  "secondary_phone_ext", limit: 4
    t.integer  "mobile",              limit: 4
    t.string   "email",               limit: 255
    t.string   "first_name",          limit: 255
    t.string   "last_name",           limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "seller_companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "code",       limit: 4
    t.string   "country_id", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "seller_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "tax_id",     limit: 255
    t.text     "seller_uid", limit: 65535
    t.text     "status",     limit: 65535
    t.integer  "country_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "service_orders", force: :cascade do |t|
    t.decimal  "amount",                        precision: 10
    t.boolean  "amount_editable"
    t.text     "comments",        limit: 65535
    t.string   "contact",         limit: 255
    t.text     "instructions",    limit: 65535
    t.string   "name",            limit: 255
    t.string   "priority",        limit: 255
    t.string   "so_type",         limit: 255
    t.string   "user_note",       limit: 255
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

end
