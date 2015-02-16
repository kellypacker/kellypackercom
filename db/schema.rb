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

ActiveRecord::Schema.define(version: 20150216053158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_groups", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "slug"
    t.integer  "row_order",          default: 0, null: false
    t.text     "artist_statement"
    t.text     "retina_dimensions"
  end

  create_table "artworks", force: true do |t|
    t.string   "title"
    t.boolean  "available"
    t.boolean  "sold"
    t.integer  "width"
    t.integer  "height"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "price"
    t.string   "slug"
    t.text     "long_title"
    t.text     "notes"
    t.string   "sold_to"
    t.date     "sale_date"
    t.string   "sale_location"
    t.text     "sale_notes"
    t.decimal  "sale_price",          precision: 8, scale: 2
    t.decimal  "sales_tax_paid",      precision: 8, scale: 2
    t.date     "sales_tax_paid_date"
    t.integer  "medium_id"
    t.text     "description"
    t.string   "store_link"
    t.integer  "row_order",                                   default: 0, null: false
    t.integer  "art_group_id"
    t.boolean  "prints_available"
    t.boolean  "framed"
    t.text     "retina_dimensions"
  end

  create_table "media", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
