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

ActiveRecord::Schema.define(version: 20151104101529) do

  create_table "abnormal_close_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 16777215
    t.string   "resource_id",   limit: 255,      null: false
    t.string   "resource_type", limit: 255,      null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "line1",            limit: 255
    t.string   "line2",            limit: 255
    t.string   "city",             limit: 255
    t.string   "zip",              limit: 255
    t.string   "location_type",    limit: 255
    t.integer  "addressable_id",   limit: 4
    t.string   "addressable_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",       limit: 4
    t.string   "state_backup",     limit: 255
    t.integer  "state_id",         limit: 4
  end

  add_index "addresses", ["addressable_id", "addressable_type"], name: "index_addresses_on_addressable_id_and_addressable_type", using: :btree
  add_index "addresses", ["country_id"], name: "index_addresses_on_country_id", using: :btree
  add_index "addresses", ["state_id"], name: "index_addresses_on_state_id", using: :btree

  create_table "adjusters", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicles_count", limit: 4,   default: 0
    t.string   "position",       limit: 255
    t.string   "status",         limit: 255
  end

  create_table "adjusters_sellers", id: false, force: :cascade do |t|
    t.integer "adjuster_id", limit: 4
    t.integer "seller_id",   limit: 4
  end

  add_index "adjusters_sellers", ["adjuster_id", "seller_id"], name: "index_adjusters_sellers_on_adjuster_id_and_seller_id", using: :btree
  add_index "adjusters_sellers", ["seller_id"], name: "fk_rails_61fe3b4010", using: :btree

  create_table "advance_charges", force: :cascade do |t|
    t.decimal  "towing",                                         precision: 12, scale: 2
    t.decimal  "towing_vat",                                     precision: 12, scale: 2
    t.decimal  "labor",                                          precision: 12, scale: 2
    t.decimal  "labor_vat",                                      precision: 12, scale: 2
    t.decimal  "yard_gate",                                      precision: 12, scale: 2
    t.decimal  "yard_gate_vat",                                  precision: 12, scale: 2
    t.decimal  "tear_down_estimate",                             precision: 12, scale: 2
    t.decimal  "tear_down_estimate_vat",                         precision: 12, scale: 2
    t.boolean  "storage_daily"
    t.decimal  "storage_amount",                                 precision: 12, scale: 2
    t.decimal  "storage_amount_vat",                             precision: 12, scale: 2
    t.decimal  "additional_fee",                                 precision: 12, scale: 2
    t.decimal  "additional_fee_vat",                             precision: 12, scale: 2
    t.string   "additional_fee_comment",             limit: 255
    t.decimal  "total_tax",                                      precision: 12, scale: 2
    t.decimal  "total_charges",                                  precision: 15, scale: 2
    t.string   "advance_check1_num",                 limit: 255
    t.decimal  "advance_check1_amount",                          precision: 15, scale: 2
    t.string   "advance_check1_payee",               limit: 255
    t.date     "advance_check1_date"
    t.string   "advance_check2_num",                 limit: 255
    t.decimal  "advance_check2_amount",                          precision: 15, scale: 2
    t.string   "advance_check2_payee",               limit: 255
    t.date     "advance_check2_date"
    t.string   "advance_check3_num",                 limit: 255
    t.decimal  "advance_check3_amount",                          precision: 15, scale: 2
    t.string   "advance_check3_payee",               limit: 255
    t.date     "advance_check3_date"
    t.string   "last_updated_by",                    limit: 255
    t.string   "created_by",                         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_id",                         limit: 4
    t.date     "storage_from_date"
    t.string   "payment1_type",                      limit: 255
    t.string   "payment2_type",                      limit: 255
    t.string   "payment3_type",                      limit: 255
    t.decimal  "previous_towing_charge",                         precision: 12, scale: 2
    t.decimal  "previous_labor_charge",                          precision: 12, scale: 2
    t.decimal  "previous_yard_gate_charge",                      precision: 12, scale: 2
    t.decimal  "previous_tear_down_estimate_charge",             precision: 12, scale: 2
    t.decimal  "previous_storage_charge",                        precision: 12, scale: 2
    t.decimal  "previous_additional_fee_charge",                 precision: 12, scale: 2
    t.decimal  "previous_total_tax_charge",                      precision: 12, scale: 2
    t.date     "storage_thru_date"
    t.decimal  "total_payments",                                 precision: 15, scale: 2
  end

  add_index "advance_charges", ["vehicle_id"], name: "index_advance_charges_on_vehicle_id", using: :btree

  create_table "api_errors", force: :cascade do |t|
    t.text     "description",         limit: 65535
    t.string   "code",                limit: 255
    t.integer  "api_error_base_id",   limit: 4
    t.string   "api_error_base_type", limit: 255
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.boolean  "active",                            default: true
  end

  add_index "api_errors", ["api_error_base_id"], name: "index_api_errors_on_api_error_base_id", using: :btree
  add_index "api_errors", ["api_error_base_type"], name: "index_api_errors_on_api_error_base_type", using: :btree

  create_table "auction_data", force: :cascade do |t|
    t.date     "auction_date"
    t.datetime "sale_time"
    t.string   "description",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_id",   limit: 4
  end

  add_index "auction_data", ["vehicle_id"], name: "index_auction_data_on_vehicle_id", using: :btree

  create_table "bid_histories", force: :cascade do |t|
    t.decimal  "bid_amount",                  precision: 15, scale: 2
    t.date     "auction_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "member_id",       limit: 4
    t.integer  "vehicle_id",      limit: 4
    t.integer  "bid_type_id",     limit: 4
    t.datetime "bid_time"
    t.string   "item_num",        limit: 255
    t.string   "bid_source_code", limit: 255
  end

  add_index "bid_histories", ["bid_type_id"], name: "index_bid_histories_on_bid_type_id", using: :btree
  add_index "bid_histories", ["member_id"], name: "index_bid_histories_on_member_id", using: :btree
  add_index "bid_histories", ["vehicle_id"], name: "index_bid_histories_on_vehicle_id", using: :btree

  create_table "bid_increments", force: :cascade do |t|
    t.integer  "minimum_bid", limit: 4
    t.integer  "maximum_bid", limit: 4
    t.integer  "interval",    limit: 4
    t.integer  "country_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bid_limits", force: :cascade do |t|
    t.string   "created_by",               limit: 255
    t.string   "updated_by",               limit: 255
    t.integer  "high_bidder_count_limit",  limit: 4
    t.decimal  "high_bidder_amount_limit",             precision: 15, scale: 3
    t.decimal  "award_amount_limit",                   precision: 15, scale: 3
    t.integer  "award_count_limit",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "member_id",                limit: 4
    t.decimal  "prelim_bid_amount_limit",              precision: 15, scale: 3
    t.integer  "prelim_bid_count_limit",   limit: 4
    t.integer  "country_id",               limit: 4
  end

  add_index "bid_limits", ["country_id"], name: "fk_rails_d1a4293efa", using: :btree
  add_index "bid_limits", ["member_id"], name: "index_bid_limits_on_member_id", using: :btree

  create_table "bid_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "body_styles", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brazil_yards_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brazil_yards_id_lookups", ["resource_id"], name: "index_brazil_yards_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "btba_types", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "btba_types_countries", id: false, force: :cascade do |t|
    t.integer "btba_type_id", limit: 4, null: false
    t.integer "country_id",   limit: 4, null: false
  end

  add_index "btba_types_countries", ["btba_type_id", "country_id"], name: "index_btba_types_countries_on_btba_type_id_and_country_id", unique: true, using: :btree
  add_index "btba_types_countries", ["country_id"], name: "fk_rails_f40a3ebb8f", using: :btree

  create_table "buyer_fee_schedules", force: :cascade do |t|
    t.string   "fee_type",               limit: 255
    t.decimal  "percent",                            precision: 12, scale: 2
    t.decimal  "sale_price_range_lower",             precision: 12, scale: 2
    t.decimal  "sale_price_range_upper",             precision: 12, scale: 2
    t.decimal  "max_fee",                            precision: 12, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",             limit: 4
    t.integer  "vehicle_type_id",        limit: 4
    t.boolean  "use_percent"
  end

  add_index "buyer_fee_schedules", ["country_id"], name: "index_buyer_fee_schedules_on_country_id", using: :btree
  add_index "buyer_fee_schedules", ["fee_type"], name: "index_buyer_fee_schedules_on_fee_type", using: :btree
  add_index "buyer_fee_schedules", ["vehicle_type_id"], name: "index_buyer_fee_schedules_on_vehicle_type_id", using: :btree

  create_table "colors", force: :cascade do |t|
    t.string   "code",        limit: 255, default: "", null: false
    t.string   "description", limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "primary_phone",            limit: 255
    t.string   "primary_phone_ext",        limit: 255
    t.string   "secondary_phone",          limit: 255
    t.string   "secondary_phone_ext",      limit: 255
    t.string   "mobile",                   limit: 255
    t.string   "email",                    limit: 255
    t.integer  "contactable_id",           limit: 4
    t.string   "contactable_type",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",               limit: 255
    t.string   "last_name",                limit: 255
    t.string   "display_name",             limit: 255
    t.string   "middle_name",              limit: 255, default: "", null: false
    t.string   "normalized_primary_phone", limit: 255
  end

  add_index "contacts", ["contactable_id", "contactable_type"], name: "index_contacts_on_contactable_id_and_contactable_type", using: :btree
  add_index "contacts", ["email"], name: "index_contacts_on_email", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",                limit: 255, default: "",    null: false
    t.string   "code",                limit: 255, default: "",    null: false
    t.string   "currency",            limit: 255, default: "",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "a3code",              limit: 255, default: "",    null: false
    t.string   "locale",              limit: 10,  default: "en"
    t.boolean  "is_zipcode_required",             default: false
    t.boolean  "is_state_required",               default: false
    t.string   "bank_country_name",   limit: 255
  end

  add_index "countries", ["code"], name: "index_countries_on_code", unique: true, using: :btree

  create_table "countries_loss_types", id: false, force: :cascade do |t|
    t.integer "country_id",   limit: 4, null: false
    t.integer "loss_type_id", limit: 4, null: false
  end

  add_index "countries_loss_types", ["country_id", "loss_type_id"], name: "index_countries_loss_types_on_country_id_and_loss_type_id", unique: true, using: :btree
  add_index "countries_loss_types", ["loss_type_id"], name: "fk_rails_4ba5abcc21", using: :btree

  create_table "countries_makes", id: false, force: :cascade do |t|
    t.integer "country_id", limit: 4, null: false
    t.integer "make_id",    limit: 4, null: false
  end

  add_index "countries_makes", ["country_id", "make_id"], name: "index_countries_makes_on_country_id_and_make_id", unique: true, using: :btree
  add_index "countries_makes", ["make_id"], name: "fk_rails_970524b3ad", using: :btree

  create_table "countries_members", id: false, force: :cascade do |t|
    t.integer "country_id", limit: 4
    t.integer "member_id",  limit: 4
  end

  add_index "countries_members", ["country_id", "member_id"], name: "index_countries_members_on_country_id_and_member_id", using: :btree
  add_index "countries_members", ["member_id"], name: "fk_rails_931ce5e552", using: :btree

  create_table "countries_models", id: false, force: :cascade do |t|
    t.integer "country_id", limit: 4, null: false
    t.integer "model_id",   limit: 4, null: false
  end

  add_index "countries_models", ["country_id"], name: "fk_rails_4c65fa66bc", using: :btree
  add_index "countries_models", ["model_id"], name: "fk_rails_cbb0970302", using: :btree

  create_table "countries_title_types", id: false, force: :cascade do |t|
    t.integer "country_id",    limit: 4, null: false
    t.integer "title_type_id", limit: 4, null: false
  end

  add_index "countries_title_types", ["country_id", "title_type_id"], name: "index_countries_title_types_on_country_id_and_title_type_id", unique: true, using: :btree
  add_index "countries_title_types", ["title_type_id"], name: "fk_rails_eb45de2023", using: :btree

  create_table "countries_trims", id: false, force: :cascade do |t|
    t.integer "country_id", limit: 4
    t.integer "trim_id",    limit: 4
  end

  create_table "countries_vehicle_types", id: false, force: :cascade do |t|
    t.integer "country_id",      limit: 4, null: false
    t.integer "vehicle_type_id", limit: 4, null: false
  end

  add_index "countries_vehicle_types", ["country_id", "vehicle_type_id"], name: "index_countries_vehicle_types_on_country_id_and_vehicle_type_id", unique: true, using: :btree
  add_index "countries_vehicle_types", ["vehicle_type_id"], name: "fk_rails_73dcf7bd83", using: :btree

  create_table "damage_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "default_member_bid_limits", force: :cascade do |t|
    t.integer  "prelim_bid_amount_limit",  limit: 4
    t.integer  "prelim_bid_count_limit",   limit: 4
    t.integer  "award_amount_limit",       limit: 4
    t.integer  "award_count_limit",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",               limit: 4
    t.integer  "high_bidder_amount_limit", limit: 4
    t.integer  "high_bidder_count_limit",  limit: 4
  end

  add_index "default_member_bid_limits", ["country_id"], name: "index_default_member_bid_limits_on_country_id", using: :btree

  create_table "document_app_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "document_types", force: :cascade do |t|
    t.string   "code",              limit: 255, default: ""
    t.string   "description",       limit: 255, default: ""
    t.string   "comments",          limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "documentable_type", limit: 255
  end

  create_table "documents", force: :cascade do |t|
    t.string   "name",                             limit: 255, default: "",                null: false
    t.integer  "documentable_id",                  limit: 4
    t.string   "documentable_type",                limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "document_type_id",                 limit: 4
    t.integer  "document_app_type_id",             limit: 4
    t.string   "document_attachment_file_name",    limit: 255
    t.string   "document_attachment_content_type", limit: 255
    t.integer  "document_attachment_file_size",    limit: 4
    t.datetime "document_attachment_updated_at"
    t.boolean  "is_pii",                                       default: false
    t.integer  "employee_id",                      limit: 4
    t.string   "type",                             limit: 255, default: "PrivateDocument"
  end

  add_index "documents", ["document_app_type_id"], name: "fk_rails_1ebc5303a5", using: :btree
  add_index "documents", ["document_type_id"], name: "index_documents_on_document_type_id", using: :btree
  add_index "documents", ["documentable_id", "documentable_type"], name: "index_documents_on_documentable_id_and_documentable_type", using: :btree
  add_index "documents", ["employee_id"], name: "index_documents_on_employee_id", using: :btree

  create_table "drive_train_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  limit: 255, default: "",                           null: false
    t.string   "encrypted_password",     limit: 255, default: "",                           null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,                            null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,                            null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.string   "last_updated_by",        limit: 255
    t.string   "creation_user",          limit: 255
    t.string   "status",                 limit: 255
    t.string   "role_sec_level",         limit: 255
    t.boolean  "admin",                              default: false,                        null: false
    t.string   "time_zone",              limit: 255, default: "Pacific Time (US & Canada)", null: false
    t.string   "user_agent_name",        limit: 255, default: "",                           null: false
    t.string   "user_agent_version",     limit: 255, default: "",                           null: false
    t.string   "user_agent_platform",    limit: 255, default: "",                           null: false
    t.boolean  "user_agent_mobile"
    t.boolean  "user_agent_tablet"
    t.integer  "security_level",         limit: 4
    t.string   "locale",                 limit: 10,  default: "en"
    t.integer  "operating_country_id",   limit: 4
    t.integer  "default_role_id",        limit: 4
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true, using: :btree
  add_index "employees", ["operating_country_id"], name: "fk_rails_ebd6dd5b17", using: :btree

  create_table "employees_roles", id: false, force: :cascade do |t|
    t.integer "employee_id", limit: 4
    t.integer "role_id",     limit: 4
  end

  add_index "employees_roles", ["employee_id"], name: "index_employees_roles_on_employee_id", using: :btree
  add_index "employees_roles", ["role_id"], name: "index_employees_roles_on_role_id", using: :btree

  create_table "employees_yards", id: false, force: :cascade do |t|
    t.integer "employee_id", limit: 4, null: false
    t.integer "yard_id",     limit: 4, null: false
  end

  add_index "employees_yards", ["employee_id", "yard_id"], name: "index_employees_yards_on_employee_id_and_yard_id", unique: true, using: :btree
  add_index "employees_yards", ["yard_id"], name: "fk_rails_2201c8ab78", using: :btree

  create_table "facilities", force: :cascade do |t|
    t.string   "name",                        limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "offsite"
    t.string   "kind",                        limit: 255
    t.string   "tax_id",                      limit: 255
    t.string   "facility_type",               limit: 255
    t.string   "routing_number",              limit: 255
    t.string   "account_number",              limit: 255
    t.string   "confirm_routing_number",      limit: 255
    t.string   "confirm_account_number",      limit: 255
    t.string   "direction",                   limit: 255
    t.string   "confirm_iban_account_number", limit: 255
    t.string   "iban_account_number",         limit: 255
    t.integer  "pickup_location_uid",         limit: 4
    t.integer  "bank_country_id",             limit: 4
    t.integer  "country_id",                  limit: 4
    t.string   "bank_name",                   limit: 255
  end

  add_index "facilities", ["bank_country_id"], name: "fk_rails_c8c33ab201", using: :btree
  add_index "facilities", ["country_id"], name: "fk_rails_1630089669", using: :btree
  add_index "facilities", ["facility_type"], name: "index_facilities_on_facility_type", using: :btree
  add_index "facilities", ["kind"], name: "index_facilities_on_kind", using: :btree

  create_table "facilities_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facilities_id_lookups", ["resource_id"], name: "index_facilities_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "fields", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "class_name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fields_parent_classes", force: :cascade do |t|
    t.integer  "parent_class_id", limit: 4
    t.integer  "field_id",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "fields_parent_classes", ["field_id"], name: "index_fields_parent_classes_on_field_id", using: :btree
  add_index "fields_parent_classes", ["parent_class_id"], name: "index_fields_parent_classes_on_parent_class_id", using: :btree

  create_table "fuel_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "germany_yards_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "germany_yards_id_lookups", ["resource_id"], name: "index_germany_yards_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "gl_category_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gl_category_types", ["code"], name: "index_gl_category_types_on_code", using: :btree

  create_table "gl_types", force: :cascade do |t|
    t.integer  "gl_fee_sequence_num",       limit: 4
    t.integer  "post_gl_account_num",       limit: 4
    t.integer  "post_jde_subaccount_num",   limit: 4
    t.string   "accounting_amount_type",    limit: 255
    t.string   "lot_level_expense",         limit: 255
    t.integer  "offset_gl_account_num",     limit: 4
    t.integer  "offset_jde_subaccount_num", limit: 4
    t.string   "offset_level_of_detail",    limit: 255
    t.decimal  "default_charge",                        precision: 12, scale: 2
    t.string   "deferred_revenue_flag",     limit: 255
    t.string   "last_updated_by",           limit: 255
    t.string   "created_by",                limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gl_category_type_id",       limit: 4
    t.string   "sap_code",                  limit: 255
    t.string   "jde_code",                  limit: 255
    t.string   "code",                      limit: 255
    t.string   "description",               limit: 255
  end

  add_index "gl_types", ["code"], name: "index_gl_types_on_code", using: :btree
  add_index "gl_types", ["gl_category_type_id"], name: "index_gl_types_on_gl_category_type_id", using: :btree

  create_table "hold_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.integer  "imageable_id",                  limit: 4
    t.string   "imageable_type",                limit: 255
    t.integer  "image_sequence_num",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_attachment_file_name",    limit: 255
    t.string   "image_attachment_content_type", limit: 255
    t.integer  "image_attachment_file_size",    limit: 4
    t.datetime "image_attachment_updated_at"
  end

  add_index "images", ["imageable_id", "imageable_type", "image_sequence_num"], name: "index_images_on_image_sequence_num", unique: true, using: :btree
  add_index "images", ["imageable_id", "imageable_type"], name: "index_images_on_imageable_id_and_imageable_type", using: :btree

  create_table "india_yards_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "india_yards_id_lookups", ["resource_id"], name: "index_india_yards_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "insureds", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "company"
    t.string   "company_name", limit: 255
    t.string   "vat_id",       limit: 255
  end

  create_table "ip_addresses", force: :cascade do |t|
    t.string   "ip",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "yard_id",    limit: 4
  end

  add_index "ip_addresses", ["yard_id"], name: "fk_rails_a1297ee075", using: :btree

  create_table "junk_buyer_associations", force: :cascade do |t|
    t.decimal  "maximum_bid",               precision: 12, scale: 2
    t.decimal  "minimum_bid",               precision: 12, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "member_id",       limit: 4
    t.integer  "yard_id",         limit: 4
    t.integer  "vehicle_type_id", limit: 4
  end

  add_index "junk_buyer_associations", ["member_id"], name: "fk_rails_e03f34a9d4", using: :btree
  add_index "junk_buyer_associations", ["vehicle_type_id", "yard_id"], name: "index_junk_buyer_associations_on_vehicle_type_id", unique: true, using: :btree
  add_index "junk_buyer_associations", ["yard_id"], name: "index_junk_buyer_associations_on_yard_id", using: :btree

  create_table "lanes", force: :cascade do |t|
    t.string   "lane_name",     limit: 255, default: "", null: false
    t.integer  "top_slot",      limit: 4
    t.integer  "created_by_id", limit: 4
    t.integer  "updated_by_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "yard_id",       limit: 4
  end

  add_index "lanes", ["yard_id"], name: "fk_rails_8249c1ef13", using: :btree

  create_table "license_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rule_num",    limit: 255, default: "", null: false
  end

  create_table "licenses", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",      limit: 4
    t.integer  "license_type_id", limit: 4
    t.integer  "member_id",       limit: 4
  end

  add_index "licenses", ["country_id"], name: "index_licenses_on_country_id", using: :btree
  add_index "licenses", ["license_type_id"], name: "index_licenses_on_license_type_id", using: :btree
  add_index "licenses", ["member_id"], name: "index_licenses_on_member_id", using: :btree

  create_table "loss_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintenance_page_permissions", force: :cascade do |t|
    t.string   "page_status", limit: 255
    t.string   "permission",  limit: 255
    t.string   "page_name",   limit: 255
    t.integer  "role_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "class_name",  limit: 255
  end

  add_index "maintenance_page_permissions", ["role_id"], name: "index_maintenance_page_permissions_on_role_id", using: :btree

  create_table "makes", force: :cascade do |t|
    t.string   "code",       limit: 255, default: "", null: false
    t.string   "name",       limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "make_uid",   limit: 4
  end

  add_index "makes", ["code"], name: "index_makes_on_code", using: :btree
  add_index "makes", ["name"], name: "index_makes_on_name", using: :btree

  create_table "makes_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "makes_id_lookups", ["resource_id"], name: "index_makes_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "makes_vehicle_types", id: false, force: :cascade do |t|
    t.integer "make_id",         limit: 4
    t.integer "vehicle_type_id", limit: 4
  end

  add_index "makes_vehicle_types", ["make_id", "vehicle_type_id"], name: "index_makes_vehicle_types_on_make_id_and_vehicle_type_id", using: :btree

  create_table "mds_access_tokens", force: :cascade do |t|
    t.text     "access_token", limit: 65535
    t.string   "token_type",   limit: 255
    t.integer  "expires_in",   limit: 4
    t.string   "scope",        limit: 255
    t.string   "jti",          limit: 255
    t.datetime "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_charges", force: :cascade do |t|
    t.integer  "lot_invoice_num",   limit: 4
    t.integer  "invoice_line_num",  limit: 4
    t.integer  "line_sequence_num", limit: 4
    t.decimal  "charge_amount",                 precision: 12, scale: 2
    t.date     "charge_date"
    t.decimal  "credit_amount",                 precision: 12, scale: 2
    t.string   "credit_type",       limit: 255
    t.string   "created_by",        limit: 255
    t.string   "comment",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "member_id",         limit: 4
    t.integer  "vehicle_id",        limit: 4
    t.integer  "gl_type_id",        limit: 4
    t.decimal  "vat",                           precision: 12, scale: 2
  end

  add_index "member_charges", ["gl_type_id"], name: "index_member_charges_on_gl_type_id", using: :btree
  add_index "member_charges", ["member_id"], name: "index_member_charges_on_member_id", using: :btree
  add_index "member_charges", ["vehicle_id"], name: "index_member_charges_on_vehicle_id", using: :btree

  create_table "member_statuses", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "global",                  default: true, null: false
  end

  create_table "member_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_company"
    t.string   "company_name",       limit: 255
    t.string   "encrypted_password", limit: 255
    t.integer  "member_uid",         limit: 4
    t.string   "created_by",         limit: 255
    t.string   "display_name",       limit: 255, default: "", null: false
  end

  add_index "members", ["member_uid"], name: "index_members_on_member_uid", unique: true, using: :btree

  create_table "members_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members_id_lookups", ["resource_id"], name: "index_members_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "membership_details", force: :cascade do |t|
    t.boolean  "bidding_enabled"
    t.date     "date_terms_conditions_accepted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",                     limit: 4
    t.integer  "member_id",                      limit: 4
    t.integer  "member_status_id",               limit: 4
    t.integer  "member_type_id",                 limit: 4
    t.integer  "membership_type_id",             limit: 4
    t.date     "member_fees_paid_date"
  end

  add_index "membership_details", ["country_id"], name: "index_membership_details_on_country_id", using: :btree
  add_index "membership_details", ["member_id"], name: "index_membership_details_on_member_id", using: :btree
  add_index "membership_details", ["member_status_id"], name: "index_membership_details_on_member_status_id", using: :btree
  add_index "membership_details", ["member_type_id"], name: "index_membership_details_on_member_type_id", using: :btree
  add_index "membership_details", ["membership_type_id"], name: "index_membership_details_on_membership_type_id", using: :btree

  create_table "membership_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: :cascade do |t|
    t.string   "name",            limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "make_id",         limit: 4
    t.integer  "vehicle_type_id", limit: 4
    t.integer  "model_uid",       limit: 4
  end

  add_index "models", ["make_id"], name: "index_models_on_make_id", using: :btree
  add_index "models", ["vehicle_type_id"], name: "index_models_on_vehicle_type_id", using: :btree

  create_table "models_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models_id_lookups", ["resource_id"], name: "index_models_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "note_permissions", force: :cascade do |t|
    t.integer  "role_id",      limit: 4
    t.integer  "note_type_id", limit: 4
    t.boolean  "is_enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "note_permissions", ["note_type_id"], name: "index_note_permissions_on_note_type_id", using: :btree
  add_index "note_permissions", ["role_id"], name: "index_note_permissions_on_role_id", using: :btree

  create_table "note_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value",       limit: 255
  end

  create_table "notes", force: :cascade do |t|
    t.string   "target_id",                limit: 255
    t.text     "content",                  limit: 16777215
    t.boolean  "system_note",                               default: false
    t.integer  "notable_id",               limit: 4
    t.string   "notable_type",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "note_type_id",             limit: 4
    t.string   "note_sub_type",            limit: 255
    t.integer  "created_by_id",            limit: 4
    t.string   "snapshot_state",           limit: 255,      default: "",    null: false
    t.string   "changed_column",           limit: 255,      default: ""
    t.string   "new_value_as_string",      limit: 255,      default: ""
    t.string   "previous_value_as_string", limit: 255,      default: ""
  end

  add_index "notes", ["notable_id", "notable_type"], name: "index_notes_on_notable_id_and_notable_type", using: :btree
  add_index "notes", ["note_sub_type"], name: "index_notes_on_note_sub_type", using: :btree
  add_index "notes", ["note_type_id"], name: "index_notes_on_note_type_id", using: :btree
  add_index "notes", ["target_id"], name: "index_notes_on_target_id", using: :btree

  create_table "odom_brands", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_updated_by", limit: 255
    t.boolean  "company"
    t.string   "company_name",    limit: 255
    t.string   "vat_id",          limit: 255
    t.integer  "owner_uid",       limit: 4
    t.integer  "country_id",      limit: 4
  end

  add_index "owners", ["country_id"], name: "index_owners_on_country_id", using: :btree

  create_table "owners_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "owners_id_lookups", ["resource_id"], name: "index_owners_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "ownership_transfer_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ownership_transfer_types", ["code"], name: "index_ownership_transfer_types_on_code", unique: true, using: :btree

  create_table "page_fields", force: :cascade do |t|
    t.integer  "page_id",    limit: 4
    t.integer  "field_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code",       limit: 255
    t.string   "item_type",  limit: 255, default: ""
  end

  add_index "page_fields", ["field_id"], name: "index_page_fields_on_field_id", using: :btree
  add_index "page_fields", ["page_id"], name: "index_page_fields_on_page_id", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string "name",        limit: 255
    t.string "description", limit: 255
  end

  create_table "parent_classes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "payment_received_details", force: :cascade do |t|
    t.integer  "lot_num",                  limit: 4
    t.integer  "lot_invoice_num",          limit: 4
    t.string   "payment_application_type", limit: 255
    t.decimal  "payment_amount",                       precision: 12, scale: 2
    t.date     "payment_date"
    t.string   "payment_applied_user",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_id",               limit: 4
    t.integer  "seller_id",                limit: 4
    t.integer  "member_id",                limit: 4
  end

  add_index "payment_received_details", ["member_id"], name: "fk_rails_5e371998da", using: :btree
  add_index "payment_received_details", ["seller_id"], name: "fk_rails_8cf6097e8d", using: :btree
  add_index "payment_received_details", ["vehicle_id"], name: "fk_rails_9c5b40d9a9", using: :btree

  create_table "pending_translations", force: :cascade do |t|
    t.string   "original_term",   limit: 255
    t.string   "new_term",        limit: 255
    t.string   "employee_locale", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "employee_id",     limit: 4
  end

  add_index "pending_translations", ["employee_id"], name: "fk_rails_fd386fb1c1", using: :btree

  create_table "permissions", force: :cascade do |t|
    t.integer  "security_level", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",           limit: 255
    t.string   "description",    limit: 255
    t.integer  "role_id",        limit: 4
    t.integer  "page_field_id",  limit: 4
    t.string   "parent_class",   limit: 255
  end

  add_index "permissions", ["page_field_id"], name: "index_permissions_on_page_field_id", using: :btree

  create_table "pii_indicaters", force: :cascade do |t|
    t.integer  "fields_parent_class_id", limit: 4
    t.integer  "country_id",             limit: 4
    t.boolean  "is_pii"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "pii_indicaters", ["fields_parent_class_id"], name: "index_pii_indicaters_on_fields_parent_class_id", using: :btree

  create_table "role_csv_details", force: :cascade do |t|
    t.string   "roles_csv_file_name",    limit: 255
    t.string   "roles_csv_content_type", limit: 255
    t.integer  "roles_csv_file_size",    limit: 4
    t.datetime "roles_csv_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_yards", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id",     limit: 4
    t.integer  "yard_id",     limit: 4
    t.integer  "employee_id", limit: 4
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "country_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "run_conditions", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_confirmation_statuses", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seller_charges", force: :cascade do |t|
    t.integer  "lot_invoice_num",   limit: 4
    t.integer  "invoice_line_num",  limit: 4
    t.integer  "line_sequence_num", limit: 4
    t.decimal  "charge_amount",                 precision: 12, scale: 2
    t.date     "charge_date"
    t.decimal  "credit_amount",                 precision: 12, scale: 2
    t.string   "credit_type",       limit: 255
    t.string   "created_by",        limit: 255
    t.string   "comment",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seller_id",         limit: 4
    t.integer  "vehicle_id",        limit: 4
    t.integer  "gl_type_id",        limit: 4
    t.decimal  "vat",                           precision: 10
  end

  add_index "seller_charges", ["gl_type_id"], name: "index_seller_charges_on_gl_type_id", using: :btree
  add_index "seller_charges", ["seller_id"], name: "index_seller_charges_on_seller_id", using: :btree
  add_index "seller_charges", ["vehicle_id"], name: "index_seller_charges_on_vehicle_id", using: :btree

  create_table "seller_companies", force: :cascade do |t|
    t.string   "name",               limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seller_company_uid", limit: 4
    t.string   "code",               limit: 255
    t.integer  "country_id",         limit: 4
  end

  add_index "seller_companies", ["country_id"], name: "fk_rails_beee81cd14", using: :btree
  add_index "seller_companies", ["seller_company_uid"], name: "index_seller_companies_on_seller_company_uid", unique: true, using: :btree

  create_table "seller_companies_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seller_companies_id_lookups", ["resource_id"], name: "index_seller_companies_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "seller_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "sap_fi_id_num",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seller_company_id", limit: 4
    t.integer  "seller_type_id",    limit: 4
    t.string   "seller_tax_id",     limit: 255
    t.string   "created_by",        limit: 255
    t.string   "last_updated_by",   limit: 255
    t.integer  "vehicles_count",    limit: 4,   default: 0
    t.integer  "adjusters_count",   limit: 4,   default: 0
    t.string   "name",              limit: 255
    t.integer  "seller_uid",        limit: 4
    t.integer  "country_id",        limit: 4
    t.boolean  "copart_default",                default: false, null: false
    t.string   "status",            limit: 255
  end

  add_index "sellers", ["country_id"], name: "fk_rails_b57e87db30", using: :btree
  add_index "sellers", ["seller_company_id"], name: "index_sellers_on_seller_company_id", using: :btree
  add_index "sellers", ["seller_type_id"], name: "index_sellers_on_seller_type_id", using: :btree
  add_index "sellers", ["seller_uid"], name: "index_sellers_on_seller_uid", unique: true, using: :btree

  create_table "sellers_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sellers_id_lookups", ["resource_id"], name: "index_sellers_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "service_order_details", force: :cascade do |t|
    t.string   "status",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seller_type_id",   limit: 4
    t.integer  "service_order_id", limit: 4
    t.boolean  "synked_with_sap",              default: false
  end

  add_index "service_order_details", ["seller_type_id"], name: "index_service_order_details_on_seller_type_id", using: :btree
  add_index "service_order_details", ["service_order_id"], name: "index_service_order_details_on_service_order_id", using: :btree

  create_table "service_orders", force: :cascade do |t|
    t.decimal  "amount",                               precision: 12, scale: 2
    t.boolean  "amount_editable",                                               default: false
    t.text     "comments",            limit: 16777215
    t.string   "contact",             limit: 255
    t.text     "instructions",        limit: 16777215
    t.string   "name",                limit: 255
    t.string   "priority",            limit: 255
    t.date     "status_updated_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",          limit: 4
    t.integer  "gl_type_id",          limit: 4
    t.integer  "seller_id",           limit: 4
    t.integer  "vehicle_id",          limit: 4
    t.boolean  "include_on_lots",                                               default: true
    t.string   "so_type",             limit: 255,                               default: ""
    t.string   "user_note",           limit: 255
  end

  add_index "service_orders", ["country_id"], name: "index_service_orders_on_country_id", using: :btree
  add_index "service_orders", ["gl_type_id"], name: "index_service_orders_on_gl_type_id", using: :btree
  add_index "service_orders", ["seller_id"], name: "index_service_orders_on_seller_id", using: :btree
  add_index "service_orders", ["vehicle_id"], name: "index_service_orders_on_vehicle_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "code",       limit: 255, default: "", null: false
    t.string   "name",       limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id", limit: 4
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id", using: :btree

  create_table "subhaulers", force: :cascade do |t|
    t.string   "provider_name",    limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "yard_id",          limit: 4
    t.string   "created_by",       limit: 255
    t.string   "last_updated_by",  limit: 255
    t.string   "tax_id",           limit: 255
    t.integer  "tow_provider_uid", limit: 4
    t.integer  "country_id",       limit: 4
    t.string   "status",           limit: 255
  end

  add_index "subhaulers", ["country_id"], name: "fk_rails_c9358dc03d", using: :btree
  add_index "subhaulers", ["tow_provider_uid"], name: "index_subhaulers_on_tow_provider_uid", unique: true, using: :btree
  add_index "subhaulers", ["yard_id"], name: "index_subhaulers_on_yard_id", using: :btree

  create_table "subhaulers_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subhaulers_id_lookups", ["resource_id"], name: "index_subhaulers_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "title_reject_reasons", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "title_types", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_type_status", limit: 255
    t.string   "last_updated_by",   limit: 255
    t.string   "created_by",        limit: 255
    t.string   "code",              limit: 255
    t.string   "description",       limit: 255
    t.string   "copart_code",       limit: 255
  end

  add_index "title_types", ["code"], name: "index_title_types_on_code", using: :btree

  create_table "translation_histories", force: :cascade do |t|
    t.string   "original_term",   limit: 255
    t.string   "new_term",        limit: 255
    t.string   "employee_locale", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "employee_id",     limit: 4
  end

  add_index "translation_histories", ["employee_id"], name: "fk_rails_3c09e40001", using: :btree

  create_table "transmission_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trims", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "trim_uid",   limit: 4
    t.integer  "model_id",   limit: 4
  end

  add_index "trims", ["model_id"], name: "index_trims_on_model_id", using: :btree

  create_table "trims_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trims_id_lookups", ["resource_id"], name: "index_trims_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "trip_infos", force: :cascade do |t|
    t.date     "trip_date"
    t.date     "trip_confirmed_date"
    t.string   "last_updated_by",     limit: 255
    t.string   "created_by",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_id",          limit: 4
    t.integer  "subhauler_id",        limit: 4
    t.integer  "trip_status_id",      limit: 4
    t.integer  "trip_type_id",        limit: 4
    t.decimal  "trip_distance",                   precision: 10, scale: 2
  end

  add_index "trip_infos", ["subhauler_id"], name: "index_trip_infos_on_subhauler_id", using: :btree
  add_index "trip_infos", ["trip_status_id"], name: "index_trip_infos_on_trip_status_id", using: :btree
  add_index "trip_infos", ["trip_type_id"], name: "index_trip_infos_on_trip_type_id", using: :btree
  add_index "trip_infos", ["vehicle_id"], name: "index_trip_infos_on_vehicle_id", using: :btree

  create_table "trip_statuses", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trip_types", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uid_managements", force: :cascade do |t|
    t.integer  "min_number",            limit: 4
    t.integer  "max_number",            limit: 4
    t.string   "attribute_name",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",            limit: 4
    t.string   "resource_table",        limit: 255, null: false
    t.string   "resource_lookup_table", limit: 255, null: false
  end

  add_index "uid_managements", ["country_id"], name: "index_uid_managements_on_country_id", using: :btree
  add_index "uid_managements", ["resource_lookup_table"], name: "index_uid_managements_on_resource_lookup_table", unique: true, using: :btree

  create_table "vat_id_details", force: :cascade do |t|
    t.string   "vat_id_num",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",           limit: 4
    t.integer  "membership_detail_id", limit: 4
  end

  add_index "vat_id_details", ["country_id"], name: "fk_rails_d95fb0cab7", using: :btree
  add_index "vat_id_details", ["membership_detail_id"], name: "fk_rails_e604307ae2", using: :btree

  create_table "vehicle_drive_trains", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_type_groups", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehicle_type_groups", ["code"], name: "index_vehicle_type_groups_on_code", using: :btree

  create_table "vehicle_types", force: :cascade do |t|
    t.string   "code",                  limit: 255, default: ""
    t.string   "description",           limit: 255, default: ""
    t.string   "comments",              limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_type_group_id", limit: 4
  end

  add_index "vehicle_types", ["code"], name: "index_vehicle_types_on_code", unique: true, using: :btree
  add_index "vehicle_types", ["vehicle_type_group_id"], name: "index_vehicle_types_on_vehicle_type_group_id", using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.decimal  "min_bid_reserve",                                precision: 12, scale: 2
    t.boolean  "ok_pay_charge"
    t.boolean  "vat_applicable"
    t.decimal  "vat_total",                                      precision: 12, scale: 2
    t.integer  "lot_num",                           limit: 4
    t.string   "vin_serial_num",                    limit: 255
    t.integer  "year",                              limit: 4
    t.string   "towable",                           limit: 255
    t.decimal  "pre_accident_value",                             precision: 12, scale: 2
    t.boolean  "insurance"
    t.string   "claim_ref_num",                     limit: 255
    t.date     "date_claim_reported"
    t.date     "date_of_loss"
    t.date     "clear_date"
    t.date     "pickup_date"
    t.date     "dispatch_date"
    t.integer  "usage",                             limit: 4
    t.string   "keys",                              limit: 255
    t.string   "vehicle_description",               limit: 255
    t.decimal  "buy_now",                                        precision: 15, scale: 2
    t.date     "sale_date"
    t.integer  "item_num",                          limit: 4
    t.boolean  "live_auction"
    t.boolean  "early_bid"
    t.boolean  "sale_confirmed",                                                          default: false
    t.date     "left_yard_date"
    t.string   "state",                             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id",                          limit: 4
    t.integer  "model_id",                          limit: 4
    t.integer  "yard_id",                           limit: 4
    t.integer  "seller_id",                         limit: 4
    t.integer  "employee_id",                       limit: 4
    t.integer  "lane_id",                           limit: 4
    t.integer  "facility_id",                       limit: 4
    t.integer  "vehicle_type_id",                   limit: 4
    t.integer  "loss_type_id",                      limit: 4
    t.integer  "subhauler_id",                      limit: 4
    t.integer  "adjuster_id",                       limit: 4
    t.integer  "run_condition_id",                  limit: 4
    t.integer  "transmission_type_id",              limit: 4
    t.integer  "owner_id",                          limit: 4
    t.integer  "insured_id",                        limit: 4
    t.integer  "pickup_location_id",                limit: 4
    t.string   "license_plate_num",                 limit: 255
    t.date     "old_auction_date"
    t.integer  "old_item_num",                      limit: 4
    t.decimal  "high_bid_amount",                                precision: 15, scale: 2
    t.string   "received_employee_name",            limit: 255
    t.date     "received_date"
    t.date     "assignment_date"
    t.string   "created_by",                        limit: 255
    t.date     "promised_pickup_date"
    t.string   "engine",                            limit: 255
    t.date     "proceeds_date"
    t.boolean  "buy_it_now_eligible",                                                     default: false
    t.string   "last_updated_by",                   limit: 255
    t.integer  "yard_row_id",                       limit: 4
    t.integer  "ownership_transfer_type_id",        limit: 4
    t.date     "sale_hold_action_date"
    t.boolean  "hold_for_sale"
    t.boolean  "hold_for_pickup"
    t.date     "hold_for_pickup_date"
    t.string   "sale_hold_comment",                 limit: 255
    t.string   "vehicle_registration_num",          limit: 255
    t.date     "cancelled_date"
    t.string   "custom_make",                       limit: 255
    t.string   "custom_model",                      limit: 255
    t.decimal  "gross_vehicle_weight",                           precision: 8,  scale: 2
    t.decimal  "vehicle_length",                                 precision: 8,  scale: 2
    t.string   "body_style",                        limit: 255
    t.integer  "fuel_type_id",                      limit: 4
    t.integer  "drive_train_type_id",               limit: 4
    t.integer  "original_odometer_hour",            limit: 4
    t.integer  "documented_odometer_hour",          limit: 4
    t.integer  "original_odometer_brand_id",        limit: 4
    t.integer  "documented_odometer_brand_id",      limit: 4
    t.integer  "calculated_odometer_brand_id",      limit: 4
    t.string   "registration_certificate_num",      limit: 255
    t.date     "sale_doc_received_date"
    t.date     "sale_doc_application_date"
    t.string   "verify_vehicle_identification_num", limit: 255
    t.string   "hold_for_pickup_reason",            limit: 255
    t.integer  "hold_type_id",                      limit: 4
    t.boolean  "inventory_info_readable"
    t.boolean  "has_engine"
    t.boolean  "has_transmission"
    t.string   "additional_info",                   limit: 4000
    t.integer  "primary_damage_type_id",            limit: 4
    t.integer  "secondary_damage_type_id",          limit: 4
    t.string   "original_doc_state",                limit: 255
    t.string   "sale_doc_state",                    limit: 255
    t.integer  "original_doc_type_id",              limit: 4
    t.integer  "sale_doc_type_id",                  limit: 4
    t.integer  "original_doc_country_id",           limit: 4
    t.integer  "sale_doc_country_id",               limit: 4
    t.string   "sale_action_approved_by",           limit: 255
    t.integer  "member_id",                         limit: 4
    t.integer  "sale_confirmation_status_id",       limit: 4
    t.boolean  "advance_charge_paid"
    t.integer  "yard_vehicle_count",                limit: 4
    t.date     "member_award_date"
    t.boolean  "member_paid"
    t.boolean  "seller_billing_complete",                                                 default: false
    t.integer  "abnormal_close_type_id",            limit: 4
    t.decimal  "estimated_cost_of_repair",                       precision: 10
    t.decimal  "residual_value",                                 precision: 10
    t.date     "sale_doc_at_copart_date"
    t.date     "sale_doc_given_to_buyer_date"
    t.string   "pickup",                            limit: 255
    t.integer  "cylinders",                         limit: 4
    t.date     "first_registration_date"
    t.string   "copart_company_code",               limit: 255
    t.date     "original_doc_received_date"
    t.integer  "copart_action_code",                limit: 4,                             default: 0
    t.boolean  "relisted",                                                                default: false,    null: false
    t.boolean  "buyer_billing_complete",                                                  default: false
    t.date     "sale_confirmed_date"
    t.decimal  "purchase_vat",                                   precision: 15, scale: 2
    t.date     "delivered_on_date"
    t.integer  "co2_emission",                      limit: 4
    t.integer  "horsepower",                        limit: 4
    t.integer  "year_of_manufacture",               limit: 4
    t.integer  "previous_lot_num",                  limit: 4
    t.integer  "number_of_reruns",                  limit: 4,                             default: 0,        null: false
    t.string   "sort_name_of_make",                 limit: 255
    t.string   "sort_name_of_model",                limit: 255
    t.integer  "btba_type_id",                      limit: 4
    t.integer  "cubic_capacity",                    limit: 4
    t.string   "euronorm",                          limit: 255
    t.boolean  "custom_make_model_approved",                                              default: true
    t.boolean  "custom_make_enabled",                                                     default: false
    t.boolean  "custom_model_enabled",                                                    default: false
    t.boolean  "custom_trim_enabled",                                                     default: false
    t.string   "custom_trim",                       limit: 255
    t.integer  "trim_id",                           limit: 4
    t.string   "lot_creation_from",                 limit: 255,                           default: "cobalt"
    t.decimal  "total_member_charges_amount",                    precision: 15, scale: 2
    t.decimal  "total_seller_charges_amount",                    precision: 15, scale: 2
    t.decimal  "grand_total_seller_charges_amount",              precision: 15, scale: 2
    t.string   "vat_section",                       limit: 255
    t.boolean  "custom",                                                                  default: false
    t.string   "settlement_model",                  limit: 255
    t.string   "lot_awarded_from",                  limit: 255
  end

  add_index "vehicles", ["abnormal_close_type_id"], name: "fk_rails_8c9a7896df", using: :btree
  add_index "vehicles", ["adjuster_id"], name: "index_vehicles_on_adjuster_id", using: :btree
  add_index "vehicles", ["btba_type_id"], name: "index_vehicles_on_btba_type_id", using: :btree
  add_index "vehicles", ["calculated_odometer_brand_id"], name: "index_vehicles_on_calculated_odometer_brand_id", using: :btree
  add_index "vehicles", ["color_id"], name: "index_vehicles_on_color_id", using: :btree
  add_index "vehicles", ["documented_odometer_brand_id"], name: "index_vehicles_on_documented_odometer_brand_id", using: :btree
  add_index "vehicles", ["drive_train_type_id"], name: "index_vehicles_on_drive_train_type_id", using: :btree
  add_index "vehicles", ["employee_id"], name: "index_vehicles_on_employee_id", using: :btree
  add_index "vehicles", ["facility_id"], name: "index_vehicles_on_facility_id", using: :btree
  add_index "vehicles", ["fuel_type_id"], name: "index_vehicles_on_fuel_type_id", using: :btree
  add_index "vehicles", ["hold_type_id"], name: "fk_rails_7bb5f6cb0c", using: :btree
  add_index "vehicles", ["insured_id"], name: "index_vehicles_on_insured_id", using: :btree
  add_index "vehicles", ["lane_id"], name: "fk_rails_ee4a55a094", using: :btree
  add_index "vehicles", ["loss_type_id"], name: "index_vehicles_on_loss_type_id", using: :btree
  add_index "vehicles", ["lot_num"], name: "index_vehicles_on_lot_num", unique: true, using: :btree
  add_index "vehicles", ["member_id"], name: "index_vehicles_on_member_id", using: :btree
  add_index "vehicles", ["model_id"], name: "index_vehicles_on_model_id", using: :btree
  add_index "vehicles", ["original_doc_country_id"], name: "index_vehicles_on_original_doc_country_id", using: :btree
  add_index "vehicles", ["original_doc_type_id"], name: "index_vehicles_on_original_doc_type_id", using: :btree
  add_index "vehicles", ["original_odometer_brand_id"], name: "index_vehicles_on_original_odometer_brand_id", using: :btree
  add_index "vehicles", ["owner_id"], name: "index_vehicles_on_owner_id", using: :btree
  add_index "vehicles", ["ownership_transfer_type_id"], name: "index_vehicles_on_ownership_transfer_type_id", using: :btree
  add_index "vehicles", ["pickup_location_id"], name: "fk_rails_ec8f58f167", using: :btree
  add_index "vehicles", ["primary_damage_type_id"], name: "index_vehicles_on_primary_damage_type_id", using: :btree
  add_index "vehicles", ["run_condition_id"], name: "index_vehicles_on_run_condition_id", using: :btree
  add_index "vehicles", ["sale_confirmation_status_id"], name: "index_vehicles_on_sale_confirmation_status_id", using: :btree
  add_index "vehicles", ["sale_doc_country_id"], name: "index_vehicles_on_sale_doc_country_id", using: :btree
  add_index "vehicles", ["sale_doc_type_id"], name: "index_vehicles_on_sale_doc_type_id", using: :btree
  add_index "vehicles", ["secondary_damage_type_id"], name: "index_vehicles_on_secondary_damage_type_id", using: :btree
  add_index "vehicles", ["seller_id"], name: "index_vehicles_on_seller_id", using: :btree
  add_index "vehicles", ["state"], name: "index_vehicles_on_state", using: :btree
  add_index "vehicles", ["subhauler_id"], name: "index_vehicles_on_subhauler_id", using: :btree
  add_index "vehicles", ["transmission_type_id"], name: "index_vehicles_on_transmission_type_id", using: :btree
  add_index "vehicles", ["trim_id"], name: "index_vehicles_on_trim_id", using: :btree
  add_index "vehicles", ["vehicle_type_id"], name: "index_vehicles_on_vehicle_type_id", using: :btree
  add_index "vehicles", ["yard_id"], name: "index_vehicles_on_yard_id", using: :btree
  add_index "vehicles", ["yard_row_id"], name: "index_vehicles_on_yard_row_id", using: :btree

  create_table "vehicles_id_lookups", force: :cascade do |t|
    t.integer  "resource_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehicles_id_lookups", ["resource_id"], name: "index_vehicles_id_lookups_on_resource_id", unique: true, using: :btree

  create_table "yard_facilities", force: :cascade do |t|
    t.decimal  "distance",              precision: 12, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "yard_id",     limit: 4
    t.integer  "facility_id", limit: 4
  end

  add_index "yard_facilities", ["facility_id", "yard_id"], name: "index_yard_facilities_on_facility_id_and_yard_id", unique: true, using: :btree
  add_index "yard_facilities", ["yard_id"], name: "fk_rails_d88a6267b3", using: :btree

  create_table "yard_rows", force: :cascade do |t|
    t.string   "row_code",        limit: 255
    t.string   "row_description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "yard_id",         limit: 4
    t.boolean  "tax_free_zone",               default: false
  end

  add_index "yard_rows", ["yard_id"], name: "index_yard_rows_on_yard_id", using: :btree

  create_table "yard_sale_days", force: :cascade do |t|
    t.string   "code",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.string   "comments",    limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "yards", force: :cascade do |t|
    t.string   "name",                      limit: 255
    t.integer  "yard_num",                  limit: 4
    t.integer  "next_vehicle_sequence_num", limit: 4
    t.string   "company_name",              limit: 255
    t.string   "time_zone",                 limit: 255
    t.string   "region_code",               limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facility_id",               limit: 4
    t.decimal  "default_bid_amount",                    precision: 10
    t.string   "tax_id",                    limit: 255
    t.string   "general_manager",           limit: 255
    t.string   "last_updated_by",           limit: 255
    t.string   "created_by",                limit: 255
    t.integer  "yard_sale_day_id",          limit: 4
    t.string   "beginning_day_of_week",     limit: 255
    t.string   "ending_day_of_week",        limit: 255
    t.string   "time_yard_opens",           limit: 255
    t.string   "time_yard_closes",          limit: 255
    t.string   "yard_sale_time",            limit: 255
    t.integer  "default_seller_id",         limit: 4
    t.string   "profit_center_number",      limit: 255
    t.string   "cost_center_number",        limit: 255
    t.boolean  "dst_active",                                           default: false
    t.string   "yard_latitude",             limit: 255
    t.string   "yard_longitude",            limit: 255
    t.string   "yard_continent_name",       limit: 255
    t.string   "yard_continent_code",       limit: 255
  end

  add_index "yards", ["facility_id"], name: "fk_rails_e098330148", using: :btree
  add_index "yards", ["yard_num"], name: "index_yards_on_yard_num", unique: true, using: :btree
  add_index "yards", ["yard_sale_day_id"], name: "fk_rails_839effb511", using: :btree

  add_foreign_key "addresses", "countries"
  add_foreign_key "addresses", "states"
  add_foreign_key "adjusters_sellers", "adjusters"
  add_foreign_key "adjusters_sellers", "sellers"
  add_foreign_key "advance_charges", "vehicles"
  add_foreign_key "auction_data", "vehicles"
  add_foreign_key "bid_histories", "bid_types"
  add_foreign_key "bid_histories", "vehicles"
  add_foreign_key "bid_limits", "countries"
  add_foreign_key "bid_limits", "members"
  add_foreign_key "btba_types_countries", "btba_types"
  add_foreign_key "btba_types_countries", "countries"
  add_foreign_key "buyer_fee_schedules", "countries"
  add_foreign_key "buyer_fee_schedules", "vehicle_types"
  add_foreign_key "countries_loss_types", "countries"
  add_foreign_key "countries_loss_types", "loss_types"
  add_foreign_key "countries_makes", "countries"
  add_foreign_key "countries_makes", "makes"
  add_foreign_key "countries_members", "countries"
  add_foreign_key "countries_members", "members"
  add_foreign_key "countries_models", "countries"
  add_foreign_key "countries_models", "models"
  add_foreign_key "countries_title_types", "countries"
  add_foreign_key "countries_title_types", "title_types"
  add_foreign_key "countries_vehicle_types", "countries"
  add_foreign_key "countries_vehicle_types", "vehicle_types"
  add_foreign_key "default_member_bid_limits", "countries"
  add_foreign_key "documents", "document_app_types"
  add_foreign_key "documents", "document_types"
  add_foreign_key "employees", "countries", column: "operating_country_id"
  add_foreign_key "employees_yards", "employees"
  add_foreign_key "employees_yards", "yards"
  add_foreign_key "facilities", "countries"
  add_foreign_key "facilities", "countries", column: "bank_country_id"
  add_foreign_key "gl_types", "gl_category_types"
  add_foreign_key "ip_addresses", "yards"
  add_foreign_key "junk_buyer_associations", "members"
  add_foreign_key "junk_buyer_associations", "vehicle_types"
  add_foreign_key "junk_buyer_associations", "yards"
  add_foreign_key "lanes", "yards"
  add_foreign_key "licenses", "countries"
  add_foreign_key "licenses", "license_types"
  add_foreign_key "licenses", "members"
  add_foreign_key "member_charges", "gl_types"
  add_foreign_key "member_charges", "vehicles"
  add_foreign_key "membership_details", "countries"
  add_foreign_key "membership_details", "member_statuses"
  add_foreign_key "membership_details", "member_types"
  add_foreign_key "membership_details", "members"
  add_foreign_key "membership_details", "membership_types"
  add_foreign_key "models", "makes"
  add_foreign_key "models", "vehicle_types"
  add_foreign_key "notes", "note_types"
  add_foreign_key "owners", "countries"
  add_foreign_key "payment_received_details", "members"
  add_foreign_key "payment_received_details", "sellers"
  add_foreign_key "payment_received_details", "vehicles"
  add_foreign_key "pending_translations", "employees"
  add_foreign_key "seller_charges", "gl_types"
  add_foreign_key "seller_charges", "sellers"
  add_foreign_key "seller_charges", "vehicles"
  add_foreign_key "seller_companies", "countries"
  add_foreign_key "sellers", "countries"
  add_foreign_key "sellers", "seller_companies"
  add_foreign_key "sellers", "seller_types"
  add_foreign_key "service_order_details", "seller_types"
  add_foreign_key "service_order_details", "service_orders"
  add_foreign_key "service_orders", "countries"
  add_foreign_key "service_orders", "gl_types"
  add_foreign_key "service_orders", "sellers"
  add_foreign_key "service_orders", "vehicles"
  add_foreign_key "states", "countries"
  add_foreign_key "subhaulers", "countries"
  add_foreign_key "subhaulers", "yards"
  add_foreign_key "translation_histories", "employees"
  add_foreign_key "trip_infos", "subhaulers"
  add_foreign_key "trip_infos", "trip_statuses"
  add_foreign_key "trip_infos", "trip_types"
  add_foreign_key "trip_infos", "vehicles"
  add_foreign_key "uid_managements", "countries"
  add_foreign_key "vat_id_details", "countries"
  add_foreign_key "vat_id_details", "membership_details"
  add_foreign_key "vehicle_types", "vehicle_type_groups"
  add_foreign_key "vehicles", "abnormal_close_types"
  add_foreign_key "vehicles", "adjusters"
  add_foreign_key "vehicles", "btba_types"
  add_foreign_key "vehicles", "colors"
  add_foreign_key "vehicles", "countries", column: "original_doc_country_id"
  add_foreign_key "vehicles", "countries", column: "sale_doc_country_id"
  add_foreign_key "vehicles", "damage_types", column: "primary_damage_type_id"
  add_foreign_key "vehicles", "damage_types", column: "secondary_damage_type_id"
  add_foreign_key "vehicles", "drive_train_types"
  add_foreign_key "vehicles", "facilities"
  add_foreign_key "vehicles", "facilities", column: "pickup_location_id"
  add_foreign_key "vehicles", "fuel_types"
  add_foreign_key "vehicles", "hold_types"
  add_foreign_key "vehicles", "insureds"
  add_foreign_key "vehicles", "lanes"
  add_foreign_key "vehicles", "loss_types"
  add_foreign_key "vehicles", "models"
  add_foreign_key "vehicles", "odom_brands", column: "calculated_odometer_brand_id"
  add_foreign_key "vehicles", "odom_brands", column: "documented_odometer_brand_id"
  add_foreign_key "vehicles", "odom_brands", column: "original_odometer_brand_id"
  add_foreign_key "vehicles", "owners"
  add_foreign_key "vehicles", "ownership_transfer_types"
  add_foreign_key "vehicles", "run_conditions"
  add_foreign_key "vehicles", "sale_confirmation_statuses"
  add_foreign_key "vehicles", "sellers"
  add_foreign_key "vehicles", "subhaulers"
  add_foreign_key "vehicles", "title_types", column: "original_doc_type_id"
  add_foreign_key "vehicles", "title_types", column: "sale_doc_type_id"
  add_foreign_key "vehicles", "transmission_types"
  add_foreign_key "vehicles", "vehicle_types"
  add_foreign_key "vehicles", "yard_rows"
  add_foreign_key "vehicles", "yards"
  add_foreign_key "yard_facilities", "facilities"
  add_foreign_key "yard_facilities", "yards"
  add_foreign_key "yard_rows", "yards"
  add_foreign_key "yards", "facilities"
  add_foreign_key "yards", "yard_sale_days"
end
