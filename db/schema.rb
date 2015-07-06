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

ActiveRecord::Schema.define(version: 20150706232046) do

  create_table "class_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "defensive_stats", force: :cascade do |t|
    t.integer  "tackle"
    t.integer  "asst_tackle"
    t.integer  "combined_tackle"
    t.integer  "sacks"
    t.integer  "yards_lost_sack"
    t.integer  "forced_fumble"
    t.integer  "fumble_recovery"
    t.integer  "pass_defend"
    t.integer  "interception"
    t.integer  "yards_return_interception"
    t.integer  "touchdown"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "player_id"
  end

  create_table "offensive_stats", force: :cascade do |t|
    t.integer  "passing_yards"
    t.integer  "passing_attempts"
    t.integer  "pass_completions"
    t.decimal  "completion_percentage"
    t.integer  "twenty_pass"
    t.integer  "passing_td"
    t.integer  "longest_pass"
    t.integer  "sacks"
    t.integer  "interceptions"
    t.integer  "rushing_yards"
    t.integer  "longest_rush"
    t.integer  "rushing_attempts"
    t.integer  "twenty_rush"
    t.decimal  "average_yards_rush"
    t.integer  "rushing_td"
    t.integer  "fumbles"
    t.integer  "receiving_yards"
    t.integer  "receptions"
    t.integer  "targets"
    t.integer  "drops"
    t.integer  "receiving_td"
    t.integer  "twenty_reception"
    t.integer  "longest_reception"
    t.integer  "average_reception"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "jersey_number"
    t.string   "phone_number"
    t.string   "email"
    t.decimal  "weight"
    t.string   "height"
    t.integer  "position_id"
    t.integer  "class_status_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_teams_stats", force: :cascade do |t|
    t.integer  "field_goals_attempted"
    t.integer  "field_goals_made"
    t.decimal  "field_goal_percentage"
    t.integer  "longest_field_goal"
    t.integer  "range_one_to_nineteen"
    t.integer  "range_twenty_to_twentynine"
    t.integer  "range_thirty_to_thirtynine"
    t.integer  "range_forty_to_fortynine"
    t.integer  "range_fifty_plus"
    t.integer  "point_made"
    t.integer  "point_attempt"
    t.integer  "punt"
    t.integer  "total_yards_punt"
    t.integer  "longest_punt"
    t.decimal  "average_yards_punt"
    t.decimal  "net_punt_average"
    t.integer  "blocked_punt"
    t.integer  "punts_in_redzone"
    t.integer  "touchbacks"
    t.integer  "fair_catch"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "player_id"
  end

  create_table "stat_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer  "stat_type_id"
    t.integer  "player_id"
    t.integer  "game_id"
    t.decimal  "value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
