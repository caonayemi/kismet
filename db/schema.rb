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

ActiveRecord::Schema.define(version: 20170402042419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basic_sections", force: :cascade do |t|
    t.integer  "score_sheet_id"
    t.integer  "subtotal"
    t.integer  "bonus"
    t.integer  "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["score_sheet_id"], name: "index_basic_sections_on_score_sheet_id", using: :btree
  end

  create_table "dice", force: :cascade do |t|
    t.integer  "num_showing"
    t.string   "color_showing"
    t.boolean  "is_saved"
    t.integer  "roll_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["roll_id"], name: "index_dice_on_roll_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kismet_sections", force: :cascade do |t|
    t.integer  "score_sheet_id"
    t.integer  "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["score_sheet_id"], name: "index_kismet_sections_on_score_sheet_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "high_score"
    t.integer  "average_score"
    t.integer  "num_games_played"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "rolls", force: :cascade do |t|
    t.integer  "turn_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turn_id"], name: "index_rolls_on_turn_id", using: :btree
  end

  create_table "score_sheets", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.integer  "total_score"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["game_id"], name: "index_score_sheets_on_game_id", using: :btree
    t.index ["player_id"], name: "index_score_sheets_on_player_id", using: :btree
  end

  create_table "scores", force: :cascade do |t|
    t.string   "scorable_type"
    t.integer  "scorable_id"
    t.integer  "turn_id"
    t.string   "name"
    t.string   "hint"
    t.integer  "points"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["scorable_type", "scorable_id"], name: "index_scores_on_scorable_type_and_scorable_id", using: :btree
    t.index ["turn_id"], name: "index_scores_on_turn_id", using: :btree
  end

  create_table "turns", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_turns_on_game_id", using: :btree
    t.index ["player_id"], name: "index_turns_on_player_id", using: :btree
  end

end
