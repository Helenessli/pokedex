ActiveRecord::Schema[8.0].define(version: 2025_03_10_192703) do
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
  end
end
