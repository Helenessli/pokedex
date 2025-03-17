module PokemonsHelper
  TYPE_EFFECTIVENESS = {
    "normal" => {
      weak_to: [ "fighting" ],
      resists: [ "ghost" ]
    },
    "fire" => {
      weak_to: [ "water", "ground", "rock" ],
      resists: [ "fire", "grass", "ice", "bug", "steel", "fairy" ]
    },
    "water" => {
      weak_to: [ "electric", "grass" ],
      resists: [ "fire", "water", "ice", "steel" ]
    },
    "electric" => {
      weak_to: [ "ground" ],
      resists: [ "electric", "flying", "steel" ]
    },
    "grass" => {
      weak_to: [ "fire", "ice", "poison", "flying", "bug" ],
      resists: [ "water", "electric", "grass", "ground" ]
    },
    "ice" => {
      weak_to: [ "fire", "fighting", "rock", "steel" ],
      resists: [ "ice" ]
    },
    "fighting" => {
      weak_to: [ "flying", "psychic", "fairy" ],
      resists: [ "bug", "rock", "dark" ]
    },
    "poison" => {
      weak_to: [ "ground", "psychic" ],
      resists: [ "grass", "fighting", "poison", "bug", "fairy" ]
    },
    "ground" => {
      weak_to: [ "water", "grass", "ice" ],
      resists: [ "poison", "rock", "electric" ]
    },
    "flying" => {
      weak_to: [ "electric", "ice", "rock" ],
      resists: [ "grass", "fighting", "bug", "ground" ]
    },
    "psychic" => {
      weak_to: [ "bug", "ghost", "dark" ],
      resists: [ "fighting", "psychic" ]
    },
    "bug" => {
      weak_to: [ "fire", "flying", "rock" ],
      resists: [ "grass", "fighting", "ground" ]
    },
    "rock" => {
      weak_to: [ "water", "grass", "fighting", "ground", "steel" ],
      resists: [ "normal", "fire", "poison", "flying" ]
    },
    "ghost" => {
      weak_to: [ "ghost", "dark" ],
      resists: [ "poison", "bug", "normal", "fighting" ]
    },
    "dragon" => {
      weak_to: [ "ice", "dragon", "fairy" ],
      resists: [ "fire", "water", "electric", "grass" ]
    },
    "dark" => {
      weak_to: [ "fighting", "bug", "fairy" ],
      resists: [ "ghost", "dark", "psychic" ]
    },
    "steel" => {
      weak_to: [ "fire", "fighting", "ground" ],
      resists: [ "normal", "grass", "ice", "flying", "psychic", "bug", "rock", "dragon", "steel", "fairy", "poison" ]
    },
    "fairy" => {
      weak_to: [ "poison", "steel" ],
      resists: [ "fighting", "bug", "dark", "dragon" ]
    }
  }

  def calculate_weaknesses(pokemon)
    return [] if pokemon.types.empty?

    # Initialize a hash to track effectiveness multipliers for each type
    effectiveness = Hash.new(1.0)

    pokemon.types.each do |type|
      type_data = TYPE_EFFECTIVENESS[type.name.downcase]

      # Add weaknesses (2x damage)
      type_data[:weak_to].each do |weak_type|
        effectiveness[weak_type] *= 2.0
      end

      # Add resistances (0.5x damage)
      type_data[:resists].each do |resist_type|
        effectiveness[resist_type] *= 0.5
      end
    end

    # Return only types that result in weakness (multiplier > 1)
    effectiveness.select { |_, multiplier| multiplier > 1 }.keys
  end
end
