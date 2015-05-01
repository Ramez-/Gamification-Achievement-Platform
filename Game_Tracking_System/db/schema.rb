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



ActiveRecord::Schema.define(version: 20150501134033) do


  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "event_id"
    t.text     "event_description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "metric_id"
    t.integer  "game_id"
  end

  add_index "events", ["event_id"], name: "index_events_on_event_id", unique: true

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
    t.integer  "user_id"
  end


  create_table "metrics", force: :cascade do |t|
    t.integer "metric_type"
    t.integer "game_id"
    t.integer "metric_id"
    t.string  "name"
  end


  create_table "requirements", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "event_id"
    t.integer  "rule_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false

  create_table "players", force: :cascade do |t|
    t.string   "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

  end

  create_table "rules", force: :cascade do |t|
    t.string   "value"
    t.string   "operation"
    t.integer  "mtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "metric_id"
    t.integer  "game_id"
    t.string   "name"

  end

  add_index "rules", ["metric_id"], name: "index_rules_on_metric_id"


  create_table "state_metrics", force: :cascade do |t|
    t.integer  "metric_id"
    t.string   "name"
    t.text     "description"
    t.string   "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

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

  create_table "views", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true

end
