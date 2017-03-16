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

ActiveRecord::Schema.define(version: 20170316102205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "websites", force: :cascade do |t|
    t.string   "name"
    t.string   "region"
    t.integer  "traffic"
    t.datetime "timestamp"
  end

  add_index "websites", ["name"], name: "index_websites_on_name", using: :btree
  add_index "websites", ["region"], name: "index_websites_on_region", using: :btree
  add_index "websites", ["timestamp"], name: "index_websites_on_timestamp", using: :btree

end
