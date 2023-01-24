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

ActiveRecord::Schema.define(version: 2023_01_23_055313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer "cat_id"
    t.text "name"
    t.text "desciption"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "name"
    t.integer "pdt_id"
    t.text "rrp"
    t.text "series"
    t.text "brand"
    t.integer "cat_id"
    t.text "price_cheaptest"
    t.text "sku"
    t.text "photo"
    t.text "image_url"
    t.text "rating"
    t.text "description"
    t.text "store_name_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.text "store_slug"
    t.text "name"
    t.text "logo"
    t.integer "phone"
    t.text "store_location"
    t.boolean "sponsor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end