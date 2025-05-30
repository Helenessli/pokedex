# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_16_022027) do
  create_table "evolutions", force: :cascade do |t|
    t.integer "pre_evolution_id"
    t.integer "evolved_pokemon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evolved_pokemon_id"], name: "index_evolutions_on_evolved_pokemon_id"
    t.index ["pre_evolution_id"], name: "index_evolutions_on_pre_evolution_id"
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.integer "pokemon_id", null: false
    t.integer "type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_pokemon_types_on_pokemon_id"
    t.index ["type_id"], name: "index_pokemon_types_on_type_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.boolean "male"
    t.text "description"
    t.integer "hp"
    t.integer "atk"
    t.integer "def"
    t.integer "spatk"
    t.integer "spdef"
    t.integer "spd"
    t.integer "tot"
    t.float "height"
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.string "color_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_types_on_name", unique: true
  end

  add_foreign_key "evolutions", "pokemons", column: "evolved_pokemon_id"
  add_foreign_key "evolutions", "pokemons", column: "pre_evolution_id"
  add_foreign_key "pokemon_types", "pokemons"
  add_foreign_key "pokemon_types", "types"
end
