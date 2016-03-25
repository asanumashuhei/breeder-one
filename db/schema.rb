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

ActiveRecord::Schema.define(version: 20160319045001) do

  create_table "data", force: :cascade do |t|
    t.string   "date",         limit: 255
    t.string   "dog_name",     limit: 255
    t.string   "appeal",       limit: 255
    t.text     "comment",      limit: 65535
    t.string   "url",          limit: 255
    t.string   "breeder_name", limit: 255
    t.string   "img_url",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "other_dogs", force: :cascade do |t|
    t.string   "site_name",  limit: 255
    t.string   "dog_id",     limit: 255
    t.string   "breeder_id", limit: 255
    t.string   "dog_type",   limit: 255
    t.string   "birthday",   limit: 255
    t.string   "price",      limit: 255
    t.string   "status",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
