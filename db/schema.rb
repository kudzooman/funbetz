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

ActiveRecord::Schema.define(version: 20150807161555) do

  create_table "bets", force: :cascade do |t|
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "credit_id"
  end

  add_index "bets", ["credit_id"], name: "index_bets_on_credit_id"

  create_table "cards", force: :cascade do |t|
    t.datetime "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "bet_id"
  end

  add_index "cards", ["bet_id"], name: "index_cards_on_bet_id"
  add_index "cards", ["user_id"], name: "index_cards_on_user_id"

  create_table "credits", force: :cascade do |t|
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.boolean  "home"
    t.float    "spread"
    t.string   "day"
    t.date     "date"
    t.time     "time"
    t.text     "weather"
    t.boolean  "winner"
    t.integer  "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "team_id"
    t.integer  "pick_id"
  end

  add_index "games", ["card_id"], name: "index_games_on_card_id"
  add_index "games", ["pick_id"], name: "index_games_on_pick_id"
  add_index "games", ["team_id"], name: "index_games_on_team_id"

  create_table "picks", force: :cascade do |t|
    t.boolean  "select"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "score"
    t.boolean  "public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "value"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.integer  "credit_id"
  end

  add_index "users", ["credit_id"], name: "index_users_on_credit_id"

end
