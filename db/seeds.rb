pokemons = [
  {
    name: "Bulbasaur",
    number: 1,
    male: true,
    description: "A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokemon.",
    hp: 45,
    atk: 49,
    def: 49,
    spatk: 65,
    spdef: 65,
    spd: 45,
    tot: 318,
    height: 0.7,
    weight: 6.9,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/bulbasaur.png"
  },
  {
    name: "Charmander",
    number: 4,
    male: true,
    description: "From the time it is born, a flame burns at the tip of its tail. Its life would end if the flame were to go out.",
    hp: 39,
    atk: 52,
    def: 43,
    spatk: 60,
    spdef: 50,
    spd: 65,
    tot: 309,
    height: 0.6,
    weight: 8.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/charmander.png"
  },
  {
    name: "Squirtle",
    number: 7,
    male: true,
    description: "When it retracts its long neck into its shell, it squirts out water with vigorous force.",
    hp: 44,
    atk: 48,
    def: 65,
    spatk: 50,
    spdef: 64,
    spd: 43,
    tot: 314,
    height: 0.5,
    weight: 9.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/squirtle.png"
  },
  {
    name: "Pikachu",
    number: 25,
    male: true,
    description: "It stores electricity in the electric sacs on its cheeks. When it releases pent-up energy in a burst, the electric power is equal to a lightning bolt.",
    hp: 35,
    atk: 55,
    def: 40,
    spatk: 50,
    spdef: 50,
    spd: 90,
    tot: 320,
    height: 0.4,
    weight: 6.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/pikachu.png"
  }
]

# Clear existing Pokemon data
Pokemon.destroy_all

# Insert the new Pokemon data
pokemons.each do |pokemon_data|
  Pokemon.create!(pokemon_data)
end