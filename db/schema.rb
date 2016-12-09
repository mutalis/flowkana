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

ActiveRecord::Schema.define(version: 20161208171813) do

  create_table "farms", force: :cascade do |t|
    t.string   "name"
    t.string   "county"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strains", force: :cascade do |t|
    t.string   "name"
    t.string   "family"
    t.float    "thc"
    t.float    "cbd"
    t.float    "purchase_price_per_gram"
    t.float    "weight",                  default: 0.0
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "farm_id"
    t.index ["farm_id"], name: "index_strains_on_farm_id"
  end

  create_table "wads", force: :cascade do |t|
    t.float    "weight",     default: 0.0
    t.float    "diference",  default: 0.0
    t.integer  "strain_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["strain_id"], name: "index_wads_on_strain_id"
  end

end
