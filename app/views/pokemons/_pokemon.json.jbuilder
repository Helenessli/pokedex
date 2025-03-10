json.extract! pokemon, :id, :name, :number, :male, :description, :hp, :atk, :def, :spatk, :spdef, :spd, :tot, :height, :weight, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
