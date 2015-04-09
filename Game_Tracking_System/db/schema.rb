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

ActiveRecord::Schema.define(version: 20150408224801) do

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "game_id"
    t.string   "game_timezone"
    t.string   "url"
    t.string   "logo"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "metrics", force: :cascade do |t|
    t.integer "metric_type"
    t.integer "game_id"
    t.integer "metric_id"
  end

  create_table "state_metrics", force: :cascade do |t|
    t.integer  "metric_id"
    t.string   "name"
    t.text     "description"
    t.string   "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "game_id"
  end

  create_table "value_metrics", force: :cascade do |t|
    t.integer  "metric_id"
    t.integer  "min"
    t.integer  "start",       default: 0
    t.integer  "max"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name"
    t.text     "description"
    t.integer  "game_id"
  end

end
