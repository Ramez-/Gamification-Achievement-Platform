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

<<<<<<< Updated upstream
ActiveRecord::Schema.define(version: 20150405170803) do
=======
ActiveRecord::Schema.define(version: 20150407231858) do
>>>>>>> Stashed changes

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "game_id"
    t.string   "game_timezone"
    t.string   "url"
    t.string   "logo"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "metrics", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rules", force: :cascade do |t|
    t.string   "metric"
    t.string   "value"
    t.string   "operation"
    t.integer  "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
