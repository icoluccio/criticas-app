# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_22_204253) do

  create_table "analysts", force: :cascade do |t|
    t.integer "other_analyst_id"
    t.integer "newspaper_id"
    t.integer "strategy_id"
    t.integer "negative_strategy_id"
    t.string "name"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["negative_strategy_id"], name: "index_analysts_on_negative_strategy_id"
    t.index ["newspaper_id"], name: "index_analysts_on_newspaper_id"
    t.index ["other_analyst_id"], name: "index_analysts_on_other_analyst_id"
    t.index ["strategy_id"], name: "index_analysts_on_strategy_id"
  end

  create_table "articles", force: :cascade do |t|
    t.text "title"
    t.float "figure"
    t.integer "analyst_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.bigint "population"
    t.bigint "pib"
    t.float "university_percentage"
    t.json "median_incomes"
    t.integer "world_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorite_countries", force: :cascade do |t|
    t.integer "analyst_id", null: false
    t.integer "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["analyst_id"], name: "index_favorite_countries_on_analyst_id"
    t.index ["country_id"], name: "index_favorite_countries_on_country_id"
  end

  create_table "newspapers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "strategies", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "worlds", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "analysts", "newspapers"
  add_foreign_key "analysts", "strategies"
  add_foreign_key "favorite_countries", "analysts"
  add_foreign_key "favorite_countries", "countries"
end
