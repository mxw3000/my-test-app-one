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

ActiveRecord::Schema.define(version: 20140226150604) do

  create_table "offers", force: true do |t|
    t.integer  "idx",        limit: 16
    t.string   "title",      limit: 80
    t.text     "text"
    t.datetime "tbegin"
    t.datetime "tend"
    t.decimal  "price",                 precision: 10, scale: 2
    t.string   "otype",      limit: 5
    t.string   "ostat",      limit: 5
    t.string   "seller",     limit: 40
    t.integer  "vcount"
    t.binary   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offers", ["idx"], name: "index_offers_on_idx"

end
