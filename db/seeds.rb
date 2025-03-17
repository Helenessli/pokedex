# Clear existing data in the correct order to handle foreign key constraints
Evolution.destroy_all
PokemonType.destroy_all
Pokemon.destroy_all
Type.destroy_all

# Create types with their color codes
types = [
  { name: "Normal", color_code: "#C5C5B5" },
  { name: "Fire", color_code: "#F59860" },
  { name: "Water", color_code: "#7FA2F2" },
  { name: "Electric", color_code: "#FFE773" },
  { name: "Grass", color_code: "#8CD067" },
  { name: "Ice", color_code: "#ACE1E1" },
  { name: "Fighting", color_code: "#EB6D67" },
  { name: "Poison", color_code: "#D169D1" },
  { name: "Ground", color_code: "#E5CC85" },
  { name: "Flying", color_code: "#C7B4F8" },
  { name: "Psychic", color_code: "#F97298" },
  { name: "Bug", color_code: "#B8C83A" },
  { name: "Rock", color_code: "#C9B158" },
  { name: "Ghost", color_code: "#8871A9" },
  { name: "Dragon", color_code: "#A785FA" },
  { name: "Dark", color_code: "#8B7468" },
  { name: "Steel", color_code: "#C6C6D9" },
  { name: "Fairy", color_code: "#F0A9B8" }
]

# Create all types
created_types = {}
types.each do |type_data|
  created_type = Type.create!(type_data)
  created_types[created_type.name] = created_type
end

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
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/bulbasaur.png",
    types: [ "Grass", "Poison" ]
  },
  {
    name: "Ivysaur",
    number: 2,
    male: true,
    description: "When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.",
    hp: 60,
    atk: 62,
    def: 63,
    spatk: 80,
    spdef: 80,
    spd: 60,
    tot: 405,
    height: 1.0,
    weight: 13.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/ivysaur.png",
    types: [ "Grass", "Poison" ]
  },
  {
    name: "Venusaur",
    number: 3,
    male: true,
    description: "The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.",
    hp: 80,
    atk: 82,
    def: 83,
    spatk: 100,
    spdef: 100,
    spd: 80,
    tot: 525,
    height: 2.0,
    weight: 100.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/venusaur.png",
    types: [ "Grass", "Poison" ]
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
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/charmander.png",
    types: [ "Fire" ]
  },
  {
    name: "Charmeleon",
    number: 5,
    male: true,
    description: "When it swings its burning tail, it elevates the temperature to unbearably high levels.",
    hp: 58,
    atk: 64,
    def: 58,
    spatk: 80,
    spdef: 65,
    spd: 80,
    tot: 405,
    height: 1.1,
    weight: 19.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/charmeleon.png",
    types: [ "Fire" ]
  },
  {
    name: "Charizard",
    number: 6,
    male: true,
    description: "It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.",
    hp: 78,
    atk: 84,
    def: 78,
    spatk: 109,
    spdef: 85,
    spd: 100,
    tot: 534,
    height: 1.7,
    weight: 90.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/charizard.png",
    types: [ "Fire", "Flying" ]
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
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/squirtle.png",
    types: [ "Water" ]
  },
  {
    name: "Wartortle",
    number: 8,
    male: true,
    description: "It is recognized as a symbol of longevity. If its shell has algae on it, that Wartortle is very old.",
    hp: 59,
    atk: 63,
    def: 80,
    spatk: 65,
    spdef: 80,
    spd: 58,
    tot: 405,
    height: 1.0,
    weight: 22.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/wartortle.png",
    types: [ "Water" ]
  },
  {
    name: "Blastoise",
    number: 9,
    male: true,
    description: "It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.",
    hp: 79,
    atk: 83,
    def: 100,
    spatk: 85,
    spdef: 105,
    spd: 78,
    tot: 530,
    height: 1.6,
    weight: 85.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/blastoise.png",
    types: [ "Water" ]
  },
  {
    name: "Caterpie",
    number: 10,
    male: true,
    description: "For protection, it releases a horrible stench from the antenna on its head to drive away enemies.",
    hp: 45,
    atk: 30,
    def: 35,
    spatk: 20,
    spdef: 20,
    spd: 45,
    tot: 195,
    height: 0.3,
    weight: 2.9,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/caterpie.png",
    types: [ "Bug" ]
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
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/pikachu.png",
    types: [ "Electric" ]
  },
  {
    name: "Metapod",
    number: 11,
    male: true,
    description: "Its shell is as hard as an iron slab. A Metapod does not move very much because it is preparing its soft innards for evolution inside the shell.",
    hp: 50,
    atk: 20,
    def: 55,
    spatk: 25,
    spdef: 25,
    spd: 30,
    tot: 205,
    height: 0.7,
    weight: 9.9,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/metapod.png",
    types: [ "Bug" ]
  },
  {
    name: "Butterfree",
    number: 12,
    male: true,
    description: "It collects honey every day. It rubs honey onto the hairs on its legs to carry it back to its nest.",
    hp: 60,
    atk: 45,
    def: 50,
    spatk: 90,
    spdef: 80,
    spd: 70,
    tot: 395,
    height: 1.1,
    weight: 32.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/butterfree.png",
    types: [ "Bug", "Flying" ]
  },
  {
    name: "Weedle",
    number: 13,
    male: true,
    description: "Often found in forests and grasslands. It has a sharp, toxic barb of around two inches on top of its head.",
    hp: 40,
    atk: 35,
    def: 30,
    spatk: 20,
    spdef: 20,
    spd: 50,
    tot: 195,
    height: 0.3,
    weight: 3.2,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/weedle.png",
    types: [ "Bug", "Poison" ]
  },
  {
    name: "Kakuna",
    number: 14,
    male: true,
    description: "Almost incapable of moving, this Pokémon can only harden its shell to protect itself when it is in danger.",
    hp: 45,
    atk: 25,
    def: 50,
    spatk: 25,
    spdef: 25,
    spd: 35,
    tot: 205,
    height: 0.6,
    weight: 10.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/kakuna.png",
    types: [ "Bug", "Poison" ]
  },
  {
    name: "Beedrill",
    number: 15,
    male: true,
    description: "It has three poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.",
    hp: 65,
    atk: 90,
    def: 40,
    spatk: 45,
    spdef: 80,
    spd: 75,
    tot: 395,
    height: 1.0,
    weight: 29.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/beedrill.png",
    types: [ "Bug", "Poison" ]
  },
  {
    name: "Pidgey",
    number: 16,
    male: true,
    description: "Very docile. If attacked, it will often kick up sand to protect itself rather than fight back.",
    hp: 40,
    atk: 45,
    def: 40,
    spatk: 35,
    spdef: 35,
    spd: 56,
    tot: 251,
    height: 0.3,
    weight: 1.8,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/pidgey.png",
    types: [ "Normal", "Flying" ]
  },
  {
    name: "Pidgeotto",
    number: 17,
    male: true,
    description: "This Pokémon is full of vitality. It constantly flies around its large territory in search of prey.",
    hp: 63,
    atk: 60,
    def: 55,
    spatk: 50,
    spdef: 50,
    spd: 71,
    tot: 349,
    height: 1.1,
    weight: 30.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/pidgeotto.png",
    types: [ "Normal", "Flying" ]
  },
  {
    name: "Pidgeot",
    number: 18,
    male: true,
    description: "This Pokémon flies at Mach 2 speed, seeking prey. Its large talons are feared as wicked weapons.",
    hp: 83,
    atk: 80,
    def: 75,
    spatk: 70,
    spdef: 70,
    spd: 101,
    tot: 479,
    height: 1.5,
    weight: 39.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/pidgeot.png",
    types: [ "Normal", "Flying" ]
  },
  {
    name: "Rattata",
    number: 19,
    male: true,
    description: "Will chew on anything with its fangs. If you see one, it is certain that 40 more live in the area.",
    hp: 30,
    atk: 56,
    def: 35,
    spatk: 25,
    spdef: 35,
    spd: 72,
    tot: 253,
    height: 0.3,
    weight: 3.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/rattata.png",
    types: [ "Normal" ]
  },
  {
    name: "Raticate",
    number: 20,
    male: true,
    description: "Its hind feet are webbed. They act as flippers, so it can swim in rivers and hunt for prey.",
    hp: 55,
    atk: 81,
    def: 60,
    spatk: 50,
    spdef: 70,
    spd: 97,
    tot: 413,
    height: 0.7,
    weight: 18.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/raticate.png",
    types: [ "Normal" ]
  },
  {
    name: "Spearow",
    number: 21,
    male: true,
    description: "Inept at flying high. However, it can fly around very fast to protect its territory.",
    hp: 40,
    atk: 60,
    def: 30,
    spatk: 31,
    spdef: 31,
    spd: 70,
    tot: 262,
    height: 0.3,
    weight: 2.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/spearow.png",
    types: [ "Normal", "Flying" ]
  },
  {
    name: "Fearow",
    number: 22,
    male: true,
    description: "A Pokémon that dates back many years. If it senses danger, it flies high and away, instantly.",
    hp: 65,
    atk: 90,
    def: 65,
    spatk: 61,
    spdef: 61,
    spd: 100,
    tot: 442,
    height: 1.2,
    weight: 38.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/fearow.png",
    types: [ "Normal", "Flying" ]
  },
  {
    name: "Ekans",
    number: 23,
    male: true,
    description: "The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.",
    hp: 35,
    atk: 60,
    def: 44,
    spatk: 40,
    spdef: 54,
    spd: 55,
    tot: 288,
    height: 2.0,
    weight: 6.9,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/ekans.png",
    types: [ "Poison" ]
  },
  {
    name: "Arbok",
    number: 24,
    male: true,
    description: "The frightening patterns on its belly have been studied. Six variations have been confirmed.",
    hp: 60,
    atk: 95,
    def: 69,
    spatk: 65,
    spdef: 79,
    spd: 80,
    tot: 448,
    height: 3.5,
    weight: 65.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/arbok.png",
    types: [ "Poison" ]
  },
  {
    name: "Raichu",
    number: 26,
    male: true,
    description: "Its long tail serves as a ground to protect itself from its own high-voltage power.",
    hp: 60,
    atk: 90,
    def: 55,
    spatk: 90,
    spdef: 80,
    spd: 110,
    tot: 485,
    height: 0.8,
    weight: 30.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/raichu.png",
    types: [ "Electric" ]
  },
  {
    name: "Sandshrew",
    number: 27,
    male: true,
    description: "Burrows deep underground in arid locations far from water. It only emerges to hunt for food.",
    hp: 50,
    atk: 75,
    def: 85,
    spatk: 20,
    spdef: 30,
    spd: 40,
    tot: 300,
    height: 0.6,
    weight: 12.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/sandshrew.png",
    types: [ "Ground" ]
  },
  {
    name: "Sandslash",
    number: 28,
    male: true,
    description: "Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.",
    hp: 75,
    atk: 100,
    def: 110,
    spatk: 45,
    spdef: 55,
    spd: 65,
    tot: 450,
    height: 1.0,
    weight: 29.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/sandslash.png",
    types: [ "Ground" ]
  },
  {
    name: "Nidoran♀",
    number: 29,
    male: false,
    description: "Although small, its venomous barbs render this Pokémon dangerous. The female has smaller horns.",
    hp: 55,
    atk: 47,
    def: 52,
    spatk: 40,
    spdef: 40,
    spd: 41,
    tot: 275,
    height: 0.4,
    weight: 7.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/nidoran-f.png",
    types: [ "Poison" ]
  },
  {
    name: "Nidorina",
    number: 30,
    male: false,
    description: "The female's horn develops slowly. Prefers physical attacks such as clawing and biting.",
    hp: 70,
    atk: 62,
    def: 67,
    spatk: 55,
    spdef: 55,
    spd: 56,
    tot: 365,
    height: 0.8,
    weight: 20.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/nidorina.png",
    types: [ "Poison" ]
  },
  {
    name: "Nidoqueen",
    number: 31,
    male: false,
    description: "Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.",
    hp: 90,
    atk: 92,
    def: 87,
    spatk: 75,
    spdef: 85,
    spd: 76,
    tot: 505,
    height: 1.3,
    weight: 60.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/nidoqueen.png",
    types: [ "Poison", "Ground" ]
  },
  {
    name: "Nidoran♂",
    number: 32,
    male: true,
    description: "Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.",
    hp: 46,
    atk: 57,
    def: 40,
    spatk: 40,
    spdef: 40,
    spd: 50,
    tot: 273,
    height: 0.5,
    weight: 9.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/nidoran-m.png",
    types: [ "Poison" ]
  },
  {
    name: "Nidorino",
    number: 33,
    male: true,
    description: "An aggressive Pokémon that is quick to attack. The horn on its head secretes a powerful venom.",
    hp: 61,
    atk: 72,
    def: 57,
    spatk: 55,
    spdef: 55,
    spd: 65,
    tot: 365,
    height: 0.9,
    weight: 19.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/nidorino.png",
    types: [ "Poison" ]
  },
  {
    name: "Nidoking",
    number: 34,
    male: true,
    description: "It uses its powerful tail in battle to smash, constrict, then break the prey's bones.",
    hp: 81,
    atk: 102,
    def: 77,
    spatk: 85,
    spdef: 75,
    spd: 85,
    tot: 505,
    height: 1.4,
    weight: 62.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/nidoking.png",
    types: [ "Poison", "Ground" ]
  },
  {
    name: "Clefairy",
    number: 35,
    male: false,
    description: "Its magical and cute appeal has many admirers. It is rare and found only in certain areas.",
    hp: 70,
    atk: 45,
    def: 48,
    spatk: 60,
    spdef: 65,
    spd: 35,
    tot: 323,
    height: 0.6,
    weight: 7.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/clefairy.png",
    types: [ "Fairy" ]
  },
  {
    name: "Clefable",
    number: 36,
    male: false,
    description: "A timid fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.",
    hp: 95,
    atk: 70,
    def: 73,
    spatk: 95,
    spdef: 90,
    spd: 60,
    tot: 483,
    height: 1.3,
    weight: 40.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/clefable.png",
    types: [ "Fairy" ]
  },
  {
    name: "Vulpix",
    number: 37,
    male: true,
    description: "At the time of its birth, it has just one tail. The tail splits from its tip as it grows older.",
    hp: 38,
    atk: 41,
    def: 40,
    spatk: 50,
    spdef: 65,
    spd: 65,
    tot: 299,
    height: 0.6,
    weight: 9.9,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/vulpix.png",
    types: [ "Fire" ]
  },
  {
    name: "Ninetales",
    number: 38,
    male: true,
    description: "Very smart and very vengeful. Grabbing one of its many tails could result in a 1000-year curse.",
    hp: 73,
    atk: 76,
    def: 75,
    spatk: 81,
    spdef: 100,
    spd: 100,
    tot: 505,
    height: 1.1,
    weight: 19.9,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/ninetales.png",
    types: [ "Fire" ]
  },
  {
    name: "Jigglypuff",
    number: 39,
    male: true,
    description: "When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.",
    hp: 115,
    atk: 45,
    def: 20,
    spatk: 45,
    spdef: 25,
    spd: 20,
    tot: 270,
    height: 0.5,
    weight: 5.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/jigglypuff.png",
    types: [ "Normal", "Fairy" ]
  },
  {
    name: "Wigglytuff",
    number: 40,
    male: true,
    description: "The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.",
    hp: 140,
    atk: 70,
    def: 45,
    spatk: 85,
    spdef: 50,
    spd: 45,
    tot: 435,
    height: 1.0,
    weight: 12.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/wigglytuff.png",
    types: [ "Normal", "Fairy" ]
  },
  {
    name: "Zubat",
    number: 41,
    male: true,
    description: "Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.",
    hp: 40,
    atk: 45,
    def: 35,
    spatk: 30,
    spdef: 40,
    spd: 55,
    tot: 245,
    height: 0.8,
    weight: 7.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/zubat.png",
    types: [ "Poison", "Flying" ]
  },
  {
    name: "Golbat",
    number: 42,
    male: true,
    description: "Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.",
    hp: 75,
    atk: 80,
    def: 70,
    spatk: 65,
    spdef: 75,
    spd: 90,
    tot: 455,
    height: 1.6,
    weight: 55.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/golbat.png",
    types: [ "Poison", "Flying" ]
  },
  {
    name: "Oddish",
    number: 43,
    male: true,
    description: "During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.",
    hp: 45,
    atk: 50,
    def: 55,
    spatk: 75,
    spdef: 65,
    spd: 30,
    tot: 320,
    height: 0.5,
    weight: 5.4,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/oddish.png",
    types: [ "Grass", "Poison" ]
  },
  {
    name: "Gloom",
    number: 44,
    male: true,
    description: "The fluid that oozes from its mouth isn't drool. It is a nectar that is used to attract prey.",
    hp: 60,
    atk: 65,
    def: 70,
    spatk: 85,
    spdef: 75,
    spd: 40,
    tot: 395,
    height: 0.8,
    weight: 8.6,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/gloom.png",
    types: [ "Grass", "Poison" ]
  },
  {
    name: "Vileplume",
    number: 45,
    male: true,
    description: "The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.",
    hp: 75,
    atk: 80,
    def: 85,
    spatk: 110,
    spdef: 90,
    spd: 50,
    tot: 490,
    height: 1.2,
    weight: 18.6,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/vileplume.png",
    types: [ "Grass", "Poison" ]
  },
  {
    name: "Paras",
    number: 46,
    male: true,
    description: "Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.",
    hp: 35,
    atk: 70,
    def: 55,
    spatk: 45,
    spdef: 55,
    spd: 25,
    tot: 285,
    height: 0.3,
    weight: 5.4,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/paras.png",
    types: [ "Bug", "Grass" ]
  },
  {
    name: "Parasect",
    number: 47,
    male: true,
    description: "A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.",
    hp: 60,
    atk: 95,
    def: 80,
    spatk: 60,
    spdef: 80,
    spd: 30,
    tot: 405,
    height: 1.0,
    weight: 29.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/parasect.png",
    types: [ "Bug", "Grass" ]
  },
  {
    name: "Venonat",
    number: 48,
    male: true,
    description: "Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.",
    hp: 60,
    atk: 55,
    def: 50,
    spatk: 40,
    spdef: 55,
    spd: 45,
    tot: 305,
    height: 1.0,
    weight: 30.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/venonat.png",
    types: [ "Bug", "Poison" ]
  },
  {
    name: "Venomoth",
    number: 49,
    male: true,
    description: "The powdery scales on its wings are hard to remove. They also contain poison that leaks out on contact.",
    hp: 70,
    atk: 65,
    def: 60,
    spatk: 90,
    spdef: 75,
    spd: 90,
    tot: 450,
    height: 1.5,
    weight: 12.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/venomoth.png",
    types: [ "Bug", "Poison" ]
  },
  {
    name: "Diglett",
    number: 50,
    male: true,
    description: "Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.",
    hp: 10,
    atk: 55,
    def: 25,
    spatk: 35,
    spdef: 45,
    spd: 95,
    tot: 265,
    height: 0.2,
    weight: 0.8,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/diglett.png",
    types: [ "Ground" ]
  },
  {
    name: "Dugtrio",
    number: 51,
    male: true,
    description: "A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.",
    hp: 35,
    atk: 100,
    def: 50,
    spatk: 50,
    spdef: 70,
    spd: 120,
    tot: 425,
    height: 0.7,
    weight: 33.3,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/dugtrio.png",
    types: [ "Ground" ]
  },
  {
    name: "Meowth",
    number: 52,
    male: true,
    description: "Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.",
    hp: 40,
    atk: 45,
    def: 35,
    spatk: 40,
    spdef: 40,
    spd: 90,
    tot: 290,
    height: 0.4,
    weight: 4.2,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/meowth.png",
    types: [ "Normal" ]
  },
  {
    name: "Persian",
    number: 53,
    male: true,
    description: "Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.",
    hp: 65,
    atk: 70,
    def: 60,
    spatk: 65,
    spdef: 65,
    spd: 115,
    tot: 440,
    height: 1.0,
    weight: 32.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/persian.png",
    types: [ "Normal" ]
  },
  {
    name: "Psyduck",
    number: 54,
    male: true,
    description: "While lulling its enemies with its vacant look, this wily Pokémon will use psychokinetic powers.",
    hp: 50,
    atk: 52,
    def: 48,
    spatk: 65,
    spdef: 50,
    spd: 55,
    tot: 320,
    height: 0.8,
    weight: 19.6,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/psyduck.png",
    types: [ "Water" ]
  },
  {
    name: "Golduck",
    number: 55,
    male: true,
    description: "Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster Kappa.",
    hp: 80,
    atk: 82,
    def: 78,
    spatk: 95,
    spdef: 80,
    spd: 85,
    tot: 500,
    height: 1.7,
    weight: 76.6,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/golduck.png",
    types: [ "Water" ]
  },
  {
    name: "Mankey",
    number: 56,
    male: true,
    description: "Extremely quick to anger. It could be docile one moment then thrashing away the next instant.",
    hp: 40,
    atk: 80,
    def: 35,
    spatk: 35,
    spdef: 45,
    spd: 70,
    tot: 305,
    height: 0.5,
    weight: 28.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/mankey.png",
    types: [ "Fighting" ]
  },
  {
    name: "Primeape",
    number: 57,
    male: true,
    description: "Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.",
    hp: 65,
    atk: 105,
    def: 60,
    spatk: 60,
    spdef: 70,
    spd: 95,
    tot: 455,
    height: 1.0,
    weight: 32.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/primeape.png",
    types: [ "Fighting" ]
  },
  {
    name: "Growlithe",
    number: 58,
    male: true,
    description: "Very protective of its territory. It will bark and bite to repel intruders from its space.",
    hp: 55,
    atk: 70,
    def: 45,
    spatk: 70,
    spdef: 50,
    spd: 60,
    tot: 350,
    height: 0.7,
    weight: 19.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/growlithe.png",
    types: [ "Fire" ]
  },
  {
    name: "Arcanine",
    number: 59,
    male: true,
    description: "A Pokémon that has been admired since the past for its beauty. It runs agilely as if on wings.",
    hp: 90,
    atk: 110,
    def: 80,
    spatk: 100,
    spdef: 80,
    spd: 95,
    tot: 555,
    height: 1.9,
    weight: 155.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/arcanine.png",
    types: [ "Fire" ]
  },
  {
    name: "Poliwag",
    number: 60,
    male: true,
    description: "Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.",
    hp: 40,
    atk: 50,
    def: 40,
    spatk: 40,
    spdef: 40,
    spd: 90,
    tot: 300,
    height: 0.6,
    weight: 12.4,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/poliwag.png",
    types: [ "Water" ]
  },
  {
    name: "Poliwhirl",
    number: 61,
    male: true,
    description: "Capable of living in or out of water. When out of water, it sweats to keep its body slimy.",
    hp: 65,
    atk: 65,
    def: 65,
    spatk: 50,
    spdef: 50,
    spd: 90,
    tot: 385,
    height: 1.0,
    weight: 20.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/poliwhirl.png",
    types: [ "Water" ]
  },
  {
    name: "Poliwrath",
    number: 62,
    male: true,
    description: "An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.",
    hp: 90,
    atk: 95,
    def: 95,
    spatk: 70,
    spdef: 90,
    spd: 70,
    tot: 510,
    height: 1.3,
    weight: 54.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/poliwrath.png",
    types: [ "Water", "Fighting" ]
  },
  {
    name: "Abra",
    number: 63,
    male: true,
    description: "Using its ability to read minds, it will identify impending danger and teleport to safety.",
    hp: 25,
    atk: 20,
    def: 15,
    spatk: 105,
    spdef: 55,
    spd: 90,
    tot: 310,
    height: 0.9,
    weight: 19.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/abra.png",
    types: [ "Psychic" ]
  },
  {
    name: "Kadabra",
    number: 64,
    male: true,
    description: "It emits special alpha waves from its body that induce headaches just by being close by.",
    hp: 40,
    atk: 35,
    def: 30,
    spatk: 120,
    spdef: 70,
    spd: 105,
    tot: 400,
    height: 1.3,
    weight: 56.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/kadabra.png",
    types: [ "Psychic" ]
  },
  {
    name: "Alakazam",
    number: 65,
    male: true,
    description: "Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000.",
    hp: 55,
    atk: 50,
    def: 45,
    spatk: 135,
    spdef: 95,
    spd: 120,
    tot: 500,
    height: 1.5,
    weight: 48.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/alakazam.png",
    types: [ "Psychic" ]
  },
  {
    name: "Machop",
    number: 66,
    male: true,
    description: "Loves to build its muscles. It trains in all styles of martial arts to become even stronger.",
    hp: 70,
    atk: 80,
    def: 50,
    spatk: 35,
    spdef: 35,
    spd: 35,
    tot: 305,
    height: 0.8,
    weight: 19.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/machop.png",
    types: [ "Fighting" ]
  },
  {
    name: "Machoke",
    number: 67,
    male: true,
    description: "Its muscular body is so powerful, it must wear a power-save belt to be able to regulate its motions.",
    hp: 80,
    atk: 100,
    def: 70,
    spatk: 50,
    spdef: 60,
    spd: 45,
    tot: 405,
    height: 1.5,
    weight: 70.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/machoke.png",
    types: [ "Fighting" ]
  },
  {
    name: "Machamp",
    number: 68,
    male: true,
    description: "Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.",
    hp: 90,
    atk: 130,
    def: 80,
    spatk: 65,
    spdef: 85,
    spd: 55,
    tot: 505,
    height: 1.6,
    weight: 130.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/machamp.png",
    types: [ "Fighting" ]
  },
  {
    name: "Bellsprout",
    number: 69,
    male: true,
    description: "A carnivorous Pokémon that traps and eats bugs. It uses its root feet to soak up needed moisture.",
    hp: 50,
    atk: 75,
    def: 35,
    spatk: 70,
    spdef: 30,
    spd: 40,
    tot: 300,
    height: 0.7,
    weight: 4.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/bellsprout.png",
    types: [ "Grass", "Poison" ]
  },
  {
    name: "Weepinbell",
    number: 70,
    male: true,
    description: "It spits out poisonpowder to immobilize the enemy and then finishes it with a spray of acid.",
    hp: 65,
    atk: 90,
    def: 50,
    spatk: 85,
    spdef: 45,
    spd: 55,
    tot: 390,
    height: 1.0,
    weight: 6.4,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/weepinbell.png",
    types: [ "Grass", "Poison" ]
  },
  {
    name: "Victreebel",
    number: 71,
    male: true,
    description: "Said to live in huge colonies deep in jungles, although no one has ever returned from there.",
    hp: 80,
    atk: 105,
    def: 65,
    spatk: 100,
    spdef: 70,
    spd: 70,
    tot: 490,
    height: 1.7,
    weight: 15.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/victreebel.png",
    types: [ "Grass", "Poison" ]
  },
  {
    name: "Tentacool",
    number: 72,
    male: true,
    description: "Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.",
    hp: 40,
    atk: 40,
    def: 35,
    spatk: 50,
    spdef: 100,
    spd: 70,
    tot: 335,
    height: 0.9,
    weight: 45.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/tentacool.png",
    types: [ "Water", "Poison" ]
  },
  {
    name: "Tentacruel",
    number: 73,
    male: true,
    description: "The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.",
    hp: 80,
    atk: 70,
    def: 65,
    spatk: 80,
    spdef: 120,
    spd: 100,
    tot: 515,
    height: 1.6,
    weight: 55.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/tentacruel.png",
    types: [ "Water", "Poison" ]
  },
  {
    name: "Geodude",
    number: 74,
    male: true,
    description: "Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.",
    hp: 40,
    atk: 80,
    def: 100,
    spatk: 30,
    spdef: 30,
    spd: 20,
    tot: 300,
    height: 0.4,
    weight: 20.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/geodude.png",
    types: [ "Rock", "Ground" ]
  },
  {
    name: "Graveler",
    number: 75,
    male: true,
    description: "Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.",
    hp: 55,
    atk: 95,
    def: 115,
    spatk: 45,
    spdef: 45,
    spd: 35,
    tot: 390,
    height: 1.0,
    weight: 105.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/graveler.png",
    types: [ "Rock", "Ground" ]
  },
  {
    name: "Golem",
    number: 76,
    male: true,
    description: "Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.",
    hp: 80,
    atk: 120,
    def: 130,
    spatk: 55,
    spdef: 65,
    spd: 45,
    tot: 495,
    height: 1.4,
    weight: 300.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/golem.png",
    types: [ "Rock", "Ground" ]
  },
  {
    name: "Ponyta",
    number: 77,
    male: true,
    description: "Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.",
    hp: 50,
    atk: 85,
    def: 55,
    spatk: 65,
    spdef: 65,
    spd: 90,
    tot: 410,
    height: 1.0,
    weight: 30.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/ponyta.png",
    types: [ "Fire" ]
  },
  {
    name: "Rapidash",
    number: 78,
    male: true,
    description: "Very competitive, this Pokémon will chase anything that moves fast in the hopes of racing it.",
    hp: 65,
    atk: 100,
    def: 70,
    spatk: 80,
    spdef: 80,
    spd: 105,
    tot: 500,
    height: 1.7,
    weight: 95.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/rapidash.png",
    types: [ "Fire" ]
  },
  {
    name: "Slowpoke",
    number: 79,
    male: true,
    description: "Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.",
    hp: 90,
    atk: 65,
    def: 65,
    spatk: 40,
    spdef: 40,
    spd: 15,
    tot: 315,
    height: 1.2,
    weight: 36.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/slowpoke.png",
    types: [ "Water", "Psychic" ]
  },
  {
    name: "Slowbro",
    number: 80,
    male: true,
    description: "The Shellder that is latched onto Slowpoke's tail is said to feed on the host's left over scraps.",
    hp: 95,
    atk: 75,
    def: 110,
    spatk: 100,
    spdef: 80,
    spd: 30,
    tot: 490,
    height: 1.6,
    weight: 78.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/slowbro.png",
    types: [ "Water", "Psychic" ]
  },
  {
    name: "Magnemite",
    number: 81,
    male: false,
    description: "Uses anti-gravity to stay suspended. Appears without warning and uses Thunder Wave and similar moves.",
    hp: 25,
    atk: 35,
    def: 70,
    spatk: 95,
    spdef: 55,
    spd: 45,
    tot: 325,
    height: 0.3,
    weight: 6.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/magnemite.png",
    types: [ "Electric", "Steel" ]
  },
  {
    name: "Magneton",
    number: 82,
    male: false,
    description: "Formed by several Magnemite linked together. They frequently appear when sunspots flare up.",
    hp: 50,
    atk: 60,
    def: 95,
    spatk: 120,
    spdef: 70,
    spd: 70,
    tot: 465,
    height: 1.0,
    weight: 60.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/magneton.png",
    types: [ "Electric", "Steel" ]
  },
  {
    name: "Farfetch'd",
    number: 83,
    male: true,
    description: "The sprig of green onions it holds is its weapon. It is used much like a metal sword.",
    hp: 52,
    atk: 90,
    def: 55,
    spatk: 58,
    spdef: 62,
    spd: 60,
    tot: 377,
    height: 0.8,
    weight: 15.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/farfetchd.png",
    types: [ "Normal", "Flying" ]
  },
  {
    name: "Doduo",
    number: 84,
    male: true,
    description: "A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.",
    hp: 35,
    atk: 85,
    def: 45,
    spatk: 35,
    spdef: 35,
    spd: 75,
    tot: 310,
    height: 1.4,
    weight: 39.2,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/doduo.png",
    types: [ "Normal", "Flying" ]
  },
  {
    name: "Dodrio",
    number: 85,
    male: true,
    description: "Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.",
    hp: 60,
    atk: 110,
    def: 70,
    spatk: 60,
    spdef: 60,
    spd: 110,
    tot: 470,
    height: 1.8,
    weight: 85.2,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/dodrio.png",
    types: [ "Normal", "Flying" ]
  },
  {
    name: "Seel",
    number: 86,
    male: true,
    description: "The protruding horn on its head is very hard. It is used for bashing through thick ice.",
    hp: 65,
    atk: 45,
    def: 55,
    spatk: 45,
    spdef: 70,
    spd: 45,
    tot: 325,
    height: 1.1,
    weight: 90.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/seel.png",
    types: [ "Water" ]
  },
  {
    name: "Dewgong",
    number: 87,
    male: true,
    description: "Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.",
    hp: 90,
    atk: 70,
    def: 80,
    spatk: 70,
    spdef: 95,
    spd: 70,
    tot: 475,
    height: 1.7,
    weight: 120.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/dewgong.png",
    types: [ "Water", "Ice" ]
  },
  {
    name: "Grimer",
    number: 88,
    male: true,
    description: "Appears in filthy areas. Thrives by sucking up polluted sludge that is toxic to other life forms.",
    hp: 80,
    atk: 80,
    def: 50,
    spatk: 40,
    spdef: 50,
    spd: 25,
    tot: 325,
    height: 0.9,
    weight: 30.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/grimer.png",
    types: [ "Poison" ]
  },
  {
    name: "Muk",
    number: 89,
    male: true,
    description: "Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.",
    hp: 105,
    atk: 105,
    def: 75,
    spatk: 65,
    spdef: 100,
    spd: 50,
    tot: 500,
    height: 1.2,
    weight: 30.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/muk.png",
    types: [ "Poison" ]
  },
  {
    name: "Shellder",
    number: 90,
    male: true,
    description: "Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.",
    hp: 30,
    atk: 65,
    def: 100,
    spatk: 45,
    spdef: 25,
    spd: 40,
    tot: 305,
    height: 0.3,
    weight: 4.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/shellder.png",
    types: [ "Water" ]
  },
  {
    name: "Cloyster",
    number: 91,
    male: true,
    description: "When attacked, it launches its horns in quick volleys. Its innards have never been seen.",
    hp: 50,
    atk: 95,
    def: 180,
    spatk: 85,
    spdef: 45,
    spd: 70,
    tot: 525,
    height: 1.5,
    weight: 132.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/cloyster.png",
    types: [ "Water", "Ice" ]
  },
  {
    name: "Gastly",
    number: 92,
    male: true,
    description: "Almost invisible, this gaseous Pokémon cloaks the target and puts it to sleep without notice.",
    hp: 30,
    atk: 35,
    def: 30,
    spatk: 100,
    spdef: 35,
    spd: 80,
    tot: 310,
    height: 1.3,
    weight: 0.1,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/gastly.png",
    types: [ "Ghost", "Poison" ]
  },
  {
    name: "Haunter",
    number: 93,
    male: true,
    description: "Because of its ability to slip through block walls, it is said to be from another dimension.",
    hp: 45,
    atk: 50,
    def: 45,
    spatk: 115,
    spdef: 55,
    spd: 95,
    tot: 405,
    height: 1.6,
    weight: 0.1,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/haunter.png",
    types: [ "Ghost", "Poison" ]
  },
  {
    name: "Gengar",
    number: 94,
    male: true,
    description: "Under a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.",
    hp: 60,
    atk: 65,
    def: 60,
    spatk: 130,
    spdef: 75,
    spd: 110,
    tot: 500,
    height: 1.5,
    weight: 40.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/gengar.png",
    types: [ "Ghost", "Poison" ]
  },
  {
    name: "Onix",
    number: 95,
    male: true,
    description: "As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.",
    hp: 35,
    atk: 45,
    def: 160,
    spatk: 30,
    spdef: 45,
    spd: 70,
    tot: 385,
    height: 8.8,
    weight: 210.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/onix.png",
    types: [ "Rock", "Ground" ]
  },
  {
    name: "Drowzee",
    number: 96,
    male: true,
    description: "Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.",
    hp: 60,
    atk: 48,
    def: 45,
    spatk: 43,
    spdef: 90,
    spd: 42,
    tot: 328,
    height: 1.0,
    weight: 32.4,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/drowzee.png",
    types: [ "Psychic" ]
  },
  {
    name: "Hypno",
    number: 97,
    male: true,
    description: "When it locks eyes with an enemy, it will use a mix of PSI moves such as Hypnosis and Confusion.",
    hp: 85,
    atk: 73,
    def: 70,
    spatk: 73,
    spdef: 115,
    spd: 67,
    tot: 483,
    height: 1.6,
    weight: 75.6,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/hypno.png",
    types: [ "Psychic" ]
  },
  {
    name: "Krabby",
    number: 98,
    male: true,
    description: "Its pincers are not only powerful weapons, they are used for balance when walking sideways.",
    hp: 30,
    atk: 105,
    def: 90,
    spatk: 25,
    spdef: 25,
    spd: 50,
    tot: 325,
    height: 0.4,
    weight: 6.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/krabby.png",
    types: [ "Water" ]
  },
  {
    name: "Kingler",
    number: 99,
    male: true,
    description: "The large pincer has 10,000-horsepower crushing force. However, its huge size makes it unwieldy to use.",
    hp: 55,
    atk: 130,
    def: 115,
    spatk: 50,
    spdef: 50,
    spd: 75,
    tot: 475,
    height: 1.3,
    weight: 60.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/kingler.png",
    types: [ "Water" ]
  },
  {
    name: "Voltorb",
    number: 100,
    male: false,
    description: "Usually found in power plants. Easily mistaken for a Poké Ball, they have zapped many people.",
    hp: 40,
    atk: 30,
    def: 50,
    spatk: 55,
    spdef: 55,
    spd: 100,
    tot: 330,
    height: 0.5,
    weight: 10.4,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/voltorb.png",
    types: [ "Electric" ]
  },
  {
    name: "Electrode",
    number: 101,
    male: false,
    description: "It stores electric energy under very high pressure. It often explodes with little or no provocation.",
    hp: 60,
    atk: 50,
    def: 70,
    spatk: 80,
    spdef: 80,
    spd: 150,
    tot: 490,
    height: 1.2,
    weight: 66.6,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/electrode.png",
    types: [ "Electric" ]
  },
  {
    name: "Exeggcute",
    number: 102,
    male: true,
    description: "Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.",
    hp: 60,
    atk: 40,
    def: 80,
    spatk: 60,
    spdef: 45,
    spd: 40,
    tot: 325,
    height: 0.4,
    weight: 2.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/exeggcute.png",
    types: [ "Grass", "Psychic" ]
  },
  {
    name: "Exeggutor",
    number: 103,
    male: true,
    description: "Legend has it that on rare occasions, one of its heads will drop off and continue on as an Exeggcute.",
    hp: 95,
    atk: 95,
    def: 85,
    spatk: 125,
    spdef: 75,
    spd: 55,
    tot: 530,
    height: 2.0,
    weight: 120.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/exeggutor.png",
    types: [ "Grass", "Psychic" ]
  },
  {
    name: "Cubone",
    number: 104,
    male: true,
    description: "Because it never removes its skull helmet, no one has ever seen this Pokémon's real face.",
    hp: 50,
    atk: 50,
    def: 95,
    spatk: 40,
    spdef: 50,
    spd: 35,
    tot: 320,
    height: 0.4,
    weight: 6.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/cubone.png",
    types: [ "Ground" ]
  },
  {
    name: "Marowak",
    number: 105,
    male: true,
    description: "The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.",
    hp: 60,
    atk: 80,
    def: 110,
    spatk: 50,
    spdef: 80,
    spd: 45,
    tot: 425,
    height: 1.0,
    weight: 45.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/marowak.png",
    types: [ "Ground" ]
  },
  {
    name: "Hitmonlee",
    number: 106,
    male: true,
    description: "When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.",
    hp: 50,
    atk: 120,
    def: 53,
    spatk: 35,
    spdef: 110,
    spd: 87,
    tot: 455,
    height: 1.5,
    weight: 49.8,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/hitmonlee.png",
    types: [ "Fighting" ]
  },
  {
    name: "Hitmonchan",
    number: 107,
    male: true,
    description: "While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.",
    hp: 50,
    atk: 105,
    def: 79,
    spatk: 35,
    spdef: 110,
    spd: 76,
    tot: 455,
    height: 1.4,
    weight: 50.2,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/hitmonchan.png",
    types: [ "Fighting" ]
  },
  {
    name: "Lickitung",
    number: 108,
    male: true,
    description: "Its tongue can be extended like a chameleon's. It leaves a tingling sensation when it licks enemies.",
    hp: 90,
    atk: 55,
    def: 75,
    spatk: 60,
    spdef: 75,
    spd: 30,
    tot: 385,
    height: 1.2,
    weight: 65.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/lickitung.png",
    types: [ "Normal" ]
  },
  {
    name: "Koffing",
    number: 109,
    male: true,
    description: "Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.",
    hp: 40,
    atk: 65,
    def: 95,
    spatk: 60,
    spdef: 45,
    spd: 35,
    tot: 340,
    height: 0.6,
    weight: 1.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/koffing.png",
    types: [ "Poison" ]
  },
  {
    name: "Weezing",
    number: 110,
    male: true,
    description: "Where two kinds of poison gases meet, 2 Koffings can fuse into a Weezing over many years.",
    hp: 65,
    atk: 90,
    def: 120,
    spatk: 85,
    spdef: 70,
    spd: 60,
    tot: 490,
    height: 1.2,
    weight: 9.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/weezing.png",
    types: [ "Poison" ]
  },
  {
    name: "Rhyhorn",
    number: 111,
    male: true,
    description: "Its brain is very small. It is so dense, while on a run it forgets why it started running in the first place.",
    hp: 80,
    atk: 85,
    def: 95,
    spatk: 30,
    spdef: 30,
    spd: 25,
    tot: 345,
    height: 1.0,
    weight: 115.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/rhyhorn.png",
    types: [ "Ground", "Rock" ]
  },
  {
    name: "Rhydon",
    number: 112,
    male: true,
    description: "Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees Fahrenheit.",
    hp: 105,
    atk: 130,
    def: 120,
    spatk: 45,
    spdef: 45,
    spd: 40,
    tot: 485,
    height: 1.9,
    weight: 120.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/rhydon.png",
    types: [ "Ground", "Rock" ]
  },
  {
    name: "Chansey",
    number: 113,
    male: false,
    description: "A rare and elusive Pokémon that is said to bring happiness to those who manage to get it.",
    hp: 250,
    atk: 5,
    def: 5,
    spatk: 35,
    spdef: 105,
    spd: 50,
    tot: 450,
    height: 1.1,
    weight: 34.6,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/chansey.png",
    types: [ "Normal" ]
  },
  {
    name: "Tangela",
    number: 114,
    male: true,
    description: "Its whole body is swathed with wide vines that are similar to seaweed. The vines sway as it walks.",
    hp: 65,
    atk: 55,
    def: 115,
    spatk: 100,
    spdef: 40,
    spd: 60,
    tot: 435,
    height: 1.0,
    weight: 35.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/tangela.png",
    types: [ "Grass" ]
  },
  {
    name: "Kangaskhan",
    number: 115,
    male: false,
    description: "The infant rarely ventures out of its mother's protective pouch until it is 3 years old.",
    hp: 105,
    atk: 95,
    def: 80,
    spatk: 40,
    spdef: 80,
    spd: 90,
    tot: 490,
    height: 2.2,
    weight: 80.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/kangaskhan.png",
    types: [ "Normal" ]
  },
  {
    name: "Horsea",
    number: 116,
    male: true,
    description: "Known to shoot down flying bugs with precision blasts of ink from the surface of the water.",
    hp: 30,
    atk: 40,
    def: 70,
    spatk: 70,
    spdef: 25,
    spd: 60,
    tot: 295,
    height: 0.4,
    weight: 8.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/horsea.png",
    types: [ "Water" ]
  },
  {
    name: "Seadra",
    number: 117,
    male: true,
    description: "Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.",
    hp: 55,
    atk: 65,
    def: 95,
    spatk: 95,
    spdef: 45,
    spd: 85,
    tot: 440,
    height: 1.2,
    weight: 25.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/seadra.png",
    types: [ "Water" ]
  },
  {
    name: "Goldeen",
    number: 118,
    male: true,
    description: "Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.",
    hp: 45,
    atk: 67,
    def: 60,
    spatk: 35,
    spdef: 50,
    spd: 63,
    tot: 320,
    height: 0.6,
    weight: 15.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/goldeen.png",
    types: [ "Water" ]
  },
  {
    name: "Seaking",
    number: 119,
    male: true,
    description: "In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.",
    hp: 80,
    atk: 92,
    def: 65,
    spatk: 65,
    spdef: 80,
    spd: 68,
    tot: 450,
    height: 1.3,
    weight: 39.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/seaking.png",
    types: [ "Water" ]
  },
  {
    name: "Staryu",
    number: 120,
    male: false,
    description: "An enigmatic Pokémon that can effortlessly regenerate any appendage it loses in battle.",
    hp: 30,
    atk: 45,
    def: 55,
    spatk: 70,
    spdef: 55,
    spd: 85,
    tot: 340,
    height: 0.8,
    weight: 34.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/staryu.png",
    types: [ "Water" ]
  },
  {
    name: "Starmie",
    number: 121,
    male: false,
    description: "Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.",
    hp: 60,
    atk: 75,
    def: 85,
    spatk: 100,
    spdef: 85,
    spd: 115,
    tot: 520,
    height: 1.1,
    weight: 80.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/starmie.png",
    types: [ "Water", "Psychic" ]
  },
  {
    name: "Mr. Mime",
    number: 122,
    male: true,
    description: "If interrupted while it is miming, it will slap around the offender with its broad hands.",
    hp: 40,
    atk: 45,
    def: 65,
    spatk: 100,
    spdef: 120,
    spd: 90,
    tot: 460,
    height: 1.3,
    weight: 54.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/mr-mime.png",
    types: [ "Psychic", "Fairy" ]
  },
  {
    name: "Scyther",
    number: 123,
    male: true,
    description: "With ninja-like agility and speed, it can create the illusion that there is more than one of itself.",
    hp: 70,
    atk: 110,
    def: 80,
    spatk: 55,
    spdef: 80,
    spd: 105,
    tot: 500,
    height: 1.5,
    weight: 56.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/scyther.png",
    types: [ "Bug", "Flying" ]
  },
  {
    name: "Jynx",
    number: 124,
    male: false,
    description: "It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.",
    hp: 65,
    atk: 50,
    def: 35,
    spatk: 115,
    spdef: 95,
    spd: 95,
    tot: 455,
    height: 1.4,
    weight: 40.6,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/jynx.png",
    types: [ "Ice", "Psychic" ]
  },
  {
    name: "Electabuzz",
    number: 125,
    male: true,
    description: "Normally found near power plants, they can wander away and cause major blackouts in cities.",
    hp: 65,
    atk: 83,
    def: 57,
    spatk: 95,
    spdef: 85,
    spd: 105,
    tot: 490,
    height: 1.1,
    weight: 30.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/electabuzz.png",
    types: [ "Electric" ]
  },
  {
    name: "Magmar",
    number: 126,
    male: true,
    description: "Its body always burns with an orange glow that enables it to hide perfectly among flames.",
    hp: 65,
    atk: 95,
    def: 57,
    spatk: 100,
    spdef: 85,
    spd: 93,
    tot: 495,
    height: 1.3,
    weight: 44.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/magmar.png",
    types: [ "Fire" ]
  },
  {
    name: "Pinsir",
    number: 127,
    male: true,
    description: "If it fails to crush the victim in its pincers, it will swing it around and toss it hard.",
    hp: 65,
    atk: 125,
    def: 100,
    spatk: 55,
    spdef: 70,
    spd: 85,
    tot: 500,
    height: 1.5,
    weight: 55.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/pinsir.png",
    types: [ "Bug" ]
  },
  {
    name: "Tauros",
    number: 128,
    male: true,
    description: "When it targets an enemy, it charges furiously while whipping its body with its long tails.",
    hp: 75,
    atk: 100,
    def: 95,
    spatk: 40,
    spdef: 70,
    spd: 110,
    tot: 490,
    height: 1.4,
    weight: 88.4,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/tauros.png",
    types: [ "Normal" ]
  },
  {
    name: "Magikarp",
    number: 129,
    male: true,
    description: "In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.",
    hp: 20,
    atk: 10,
    def: 55,
    spatk: 15,
    spdef: 20,
    spd: 80,
    tot: 200,
    height: 0.9,
    weight: 10.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/magikarp.png",
    types: [ "Water" ]
  },
  {
    name: "Gyarados",
    number: 130,
    male: true,
    description: "Once it appears, it goes on a rampage. It remains enraged until it demolishes everything around it.",
    hp: 95,
    atk: 125,
    def: 79,
    spatk: 60,
    spdef: 100,
    spd: 81,
    tot: 540,
    height: 6.5,
    weight: 235.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/gyarados.png",
    types: [ "Water", "Flying" ]
  },
  {
    name: "Lapras",
    number: 131,
    male: true,
    description: "A Pokémon that has been overhunted almost to extinction. It can ferry people across the water.",
    hp: 130,
    atk: 85,
    def: 80,
    spatk: 85,
    spdef: 95,
    spd: 60,
    tot: 535,
    height: 2.5,
    weight: 220.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/lapras.png",
    types: [ "Water", "Ice" ]
  },
  {
    name: "Ditto",
    number: 132,
    male: false,
    description: "Capable of copying an enemy's genetic code to instantly transform itself into a duplicate of the enemy.",
    hp: 48,
    atk: 48,
    def: 48,
    spatk: 48,
    spdef: 48,
    spd: 48,
    tot: 288,
    height: 0.3,
    weight: 4.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/ditto.png",
    types: [ "Normal" ]
  },
  {
    name: "Eevee",
    number: 133,
    male: true,
    description: "Its genetic code is irregular. It may mutate if it is exposed to radiation from element stones.",
    hp: 55,
    atk: 55,
    def: 50,
    spatk: 45,
    spdef: 65,
    spd: 55,
    tot: 325,
    height: 0.3,
    weight: 6.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/eevee.png",
    types: [ "Normal" ]
  },
  {
    name: "Vaporeon",
    number: 134,
    male: true,
    description: "Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid's.",
    hp: 130,
    atk: 65,
    def: 60,
    spatk: 110,
    spdef: 95,
    spd: 65,
    tot: 525,
    height: 1.0,
    weight: 29.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/vaporeon.png",
    types: [ "Water" ]
  },
  {
    name: "Jolteon",
    number: 135,
    male: true,
    description: "It accumulates negative ions in the atmosphere to blast out 10,000-volt lightning bolts.",
    hp: 65,
    atk: 65,
    def: 60,
    spatk: 110,
    spdef: 95,
    spd: 130,
    tot: 525,
    height: 0.8,
    weight: 24.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/jolteon.png",
    types: [ "Electric" ]
  },
  {
    name: "Flareon",
    number: 136,
    male: true,
    description: "When storing thermal energy in its body, its temperature could soar to over 1,600 degrees Fahrenheit.",
    hp: 65,
    atk: 130,
    def: 60,
    spatk: 95,
    spdef: 110,
    spd: 65,
    tot: 525,
    height: 0.9,
    weight: 25.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/flareon.png",
    types: [ "Fire" ]
  },
  {
    name: "Porygon",
    number: 137,
    male: false,
    description: "A Pokémon that consists entirely of programming code. Capable of moving freely in cyberspace.",
    hp: 65,
    atk: 60,
    def: 70,
    spatk: 85,
    spdef: 75,
    spd: 40,
    tot: 395,
    height: 0.8,
    weight: 36.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/porygon.png",
    types: [ "Normal" ]
  },
  {
    name: "Omanyte",
    number: 138,
    male: true,
    description: "Although long extinct, in rare cases, it can be genetically regenerated from fossils.",
    hp: 35,
    atk: 40,
    def: 100,
    spatk: 90,
    spdef: 55,
    spd: 35,
    tot: 355,
    height: 0.4,
    weight: 7.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/omanyte.png",
    types: [ "Rock", "Water" ]
  },
  {
    name: "Omastar",
    number: 139,
    male: true,
    description: "Once wrapped around its prey, it never lets go. It eats the prey by tearing at it with sharp fangs.",
    hp: 70,
    atk: 60,
    def: 125,
    spatk: 115,
    spdef: 70,
    spd: 55,
    tot: 495,
    height: 1.0,
    weight: 35.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/omastar.png",
    types: [ "Rock", "Water" ]
  },
  {
    name: "Kabuto",
    number: 140,
    male: true,
    description: "A Pokémon that was regenerated from a fossil found in what was once the ocean floor eons ago.",
    hp: 30,
    atk: 80,
    def: 90,
    spatk: 55,
    spdef: 45,
    spd: 55,
    tot: 355,
    height: 0.5,
    weight: 11.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/kabuto.png",
    types: [ "Rock", "Water" ]
  },
  {
    name: "Kabutops",
    number: 141,
    male: true,
    description: "Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.",
    hp: 60,
    atk: 115,
    def: 105,
    spatk: 65,
    spdef: 70,
    spd: 80,
    tot: 495,
    height: 1.3,
    weight: 40.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/kabutops.png",
    types: [ "Rock", "Water" ]
  },
  {
    name: "Aerodactyl",
    number: 142,
    male: true,
    description: "A ferocious, prehistoric Pokémon that goes for the enemy's throat with its serrated saw-like fangs.",
    hp: 80,
    atk: 105,
    def: 65,
    spatk: 60,
    spdef: 75,
    spd: 130,
    tot: 515,
    height: 1.8,
    weight: 59.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/aerodactyl.png",
    types: [ "Rock", "Flying" ]
  },
  {
    name: "Snorlax",
    number: 143,
    male: true,
    description: "Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.",
    hp: 160,
    atk: 110,
    def: 65,
    spatk: 65,
    spdef: 110,
    spd: 30,
    tot: 540,
    height: 2.1,
    weight: 460.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/snorlax.png",
    types: [ "Normal" ]
  },
  {
    name: "Articuno",
    number: 144,
    male: false,
    description: "A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.",
    hp: 90,
    atk: 85,
    def: 100,
    spatk: 95,
    spdef: 125,
    spd: 85,
    tot: 580,
    height: 1.7,
    weight: 55.4,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/articuno.png",
    types: [ "Ice", "Flying" ]
  },
  {
    name: "Zapdos",
    number: 145,
    male: false,
    description: "A legendary bird Pokémon that is said to appear from clouds while dropping enormous lightning bolts.",
    hp: 90,
    atk: 90,
    def: 85,
    spatk: 125,
    spdef: 90,
    spd: 100,
    tot: 580,
    height: 1.6,
    weight: 52.6,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/zapdos.png",
    types: [ "Electric", "Flying" ]
  },
  {
    name: "Moltres",
    number: 146,
    male: false,
    description: "Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.",
    hp: 90,
    atk: 100,
    def: 90,
    spatk: 125,
    spdef: 85,
    spd: 90,
    tot: 580,
    height: 2.0,
    weight: 60.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/moltres.png",
    types: [ "Fire", "Flying" ]
  },
  {
    name: "Dratini",
    number: 147,
    male: true,
    description: "Long considered a mythical Pokémon until recently, when a small colony was found living underwater.",
    hp: 41,
    atk: 64,
    def: 45,
    spatk: 50,
    spdef: 50,
    spd: 50,
    tot: 300,
    height: 1.8,
    weight: 3.3,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/dratini.png",
    types: [ "Dragon" ]
  },
  {
    name: "Dragonair",
    number: 148,
    male: true,
    description: "A mystical Pokémon that exudes a gentle aura. Has the ability to change climate conditions.",
    hp: 61,
    atk: 84,
    def: 65,
    spatk: 70,
    spdef: 70,
    spd: 70,
    tot: 420,
    height: 4.0,
    weight: 16.5,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/dragonair.png",
    types: [ "Dragon" ]
  },
  {
    name: "Dragonite",
    number: 149,
    male: true,
    description: "An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.",
    hp: 91,
    atk: 134,
    def: 95,
    spatk: 100,
    spdef: 100,
    spd: 80,
    tot: 600,
    height: 2.2,
    weight: 210.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/dragonite.png",
    types: [ "Dragon", "Flying" ]
  },
  {
    name: "Mewtwo",
    number: 150,
    male: false,
    description: "It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.",
    hp: 106,
    atk: 110,
    def: 90,
    spatk: 154,
    spdef: 90,
    spd: 130,
    tot: 680,
    height: 2.0,
    weight: 122.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/mewtwo.png",
    types: [ "Psychic" ]
  },
  {
    name: "Mew",
    number: 151,
    male: false,
    description: "So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.",
    hp: 100,
    atk: 100,
    def: 100,
    spatk: 100,
    spdef: 100,
    spd: 100,
    tot: 600,
    height: 0.4,
    weight: 4.0,
    image_url: "https://img.pokemondb.net/sprites/x-y/normal/mew.png",
    types: [ "Psychic" ]
  }
]

# Insert the Pokemon data and associate with types
pokemons.each do |pokemon_data|
  # Extract the types array from the pokemon data
  pokemon_types = pokemon_data.delete(:types)

  # Create the Pokemon
  pokemon = Pokemon.create!(pokemon_data)

  # Associate the Pokemon with its types
  pokemon_types.each do |type_name|
    PokemonType.create!(
      pokemon: pokemon,
      type: created_types[type_name]
    )
  end
end

# Create evolution chains
evolution_data = [
  # Bulbasaur family (1-3)
  {
    pre_evolution_id: Pokemon.find_by(number: 1).id,  # Bulbasaur
    evolved_pokemon_id: Pokemon.find_by(number: 2).id  # Ivysaur
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 2).id,  # Ivysaur
    evolved_pokemon_id: Pokemon.find_by(number: 3).id  # Venusaur
  },

  # Charmander family (4-6)
  {
    pre_evolution_id: Pokemon.find_by(number: 4).id,  # Charmander
    evolved_pokemon_id: Pokemon.find_by(number: 5).id  # Charmeleon
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 5).id,  # Charmeleon
    evolved_pokemon_id: Pokemon.find_by(number: 6).id  # Charizard
  },

  # Squirtle family (7-9)
  {
    pre_evolution_id: Pokemon.find_by(number: 7).id,  # Squirtle
    evolved_pokemon_id: Pokemon.find_by(number: 8).id  # Wartortle
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 8).id,  # Wartortle
    evolved_pokemon_id: Pokemon.find_by(number: 9).id  # Blastoise
  },

  # Caterpie family (10-12)
  {
    pre_evolution_id: Pokemon.find_by(number: 10).id,  # Caterpie
    evolved_pokemon_id: Pokemon.find_by(number: 11).id # Metapod
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 11).id,  # Metapod
    evolved_pokemon_id: Pokemon.find_by(number: 12).id # Butterfree
  },

  # Weedle family (13-15)
  {
    pre_evolution_id: Pokemon.find_by(number: 13).id,  # Weedle
    evolved_pokemon_id: Pokemon.find_by(number: 14).id # Kakuna
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 14).id,  # Kakuna
    evolved_pokemon_id: Pokemon.find_by(number: 15).id # Beedrill
  },

  # Pidgey family (16-18)
  {
    pre_evolution_id: Pokemon.find_by(number: 16).id,  # Pidgey
    evolved_pokemon_id: Pokemon.find_by(number: 17).id # Pidgeotto
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 17).id,  # Pidgeotto
    evolved_pokemon_id: Pokemon.find_by(number: 18).id # Pidgeot
  },

  # Rattata family (19-20)
  {
    pre_evolution_id: Pokemon.find_by(number: 19).id,  # Rattata
    evolved_pokemon_id: Pokemon.find_by(number: 20).id # Raticate
  },

  # Spearow family (21-22)
  {
    pre_evolution_id: Pokemon.find_by(number: 21).id,  # Spearow
    evolved_pokemon_id: Pokemon.find_by(number: 22).id # Fearow
  },

  # Ekans family (23-24)
  {
    pre_evolution_id: Pokemon.find_by(number: 23).id,  # Ekans
    evolved_pokemon_id: Pokemon.find_by(number: 24).id # Arbok
  },

  # Pikachu family (25-26)
  {
    pre_evolution_id: Pokemon.find_by(number: 25).id,  # Ekans
    evolved_pokemon_id: Pokemon.find_by(number: 26).id # Arbok
  },

  # Sandshrew family (27-28)
  {
    pre_evolution_id: Pokemon.find_by(number: 27).id,  # Sandshrew
    evolved_pokemon_id: Pokemon.find_by(number: 28).id # Sandslash
  },

  # Nidoran♀ family (29-31)
  {
    pre_evolution_id: Pokemon.find_by(number: 29).id,  # Nidoran♀
    evolved_pokemon_id: Pokemon.find_by(number: 30).id # Nidorina
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 30).id,  # Nidorina
    evolved_pokemon_id: Pokemon.find_by(number: 31).id # Nidoqueen
  },

  # Nidoran♂ family (32-34)
  {
    pre_evolution_id: Pokemon.find_by(number: 32).id,  # Nidoran♂
    evolved_pokemon_id: Pokemon.find_by(number: 33).id # Nidorino
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 33).id,  # Nidorino
    evolved_pokemon_id: Pokemon.find_by(number: 34).id # Nidoking
  },

  # Clefairy family (35-36)
  {
    pre_evolution_id: Pokemon.find_by(number: 35).id,  # Clefairy
    evolved_pokemon_id: Pokemon.find_by(number: 36).id # Clefable
  },

  # Vulpix family (37-38)
  {
    pre_evolution_id: Pokemon.find_by(number: 37).id,  # Vulpix
    evolved_pokemon_id: Pokemon.find_by(number: 38).id # Ninetales
  },

  # Jigglypuff family (39-40)
  {
    pre_evolution_id: Pokemon.find_by(number: 39).id,  # Jigglypuff
    evolved_pokemon_id: Pokemon.find_by(number: 40).id # Wigglytuff
  },

  # Zubat family (41-42)
  {
    pre_evolution_id: Pokemon.find_by(number: 41).id,  # Zubat
    evolved_pokemon_id: Pokemon.find_by(number: 42).id # Golbat
  },

  # Oddish family (43-45)
  {
    pre_evolution_id: Pokemon.find_by(number: 43).id,  # Oddish
    evolved_pokemon_id: Pokemon.find_by(number: 44).id # Gloom
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 44).id,  # Gloom
    evolved_pokemon_id: Pokemon.find_by(number: 45).id # Vileplume
  },

  # Paras family (46-47)
  {
    pre_evolution_id: Pokemon.find_by(number: 46).id,  # Paras
    evolved_pokemon_id: Pokemon.find_by(number: 47).id # Parasect
  },

  # Venonat family (48-49)
  {
    pre_evolution_id: Pokemon.find_by(number: 48).id,  # Venonat
    evolved_pokemon_id: Pokemon.find_by(number: 49).id # Venomoth
  },

  # Diglett family (50-51)
  {
    pre_evolution_id: Pokemon.find_by(number: 50).id,  # Diglett
    evolved_pokemon_id: Pokemon.find_by(number: 51).id # Dugtrio
  },

  # Meowth family (52-53)
  {
    pre_evolution_id: Pokemon.find_by(number: 52).id,  # Meowth
    evolved_pokemon_id: Pokemon.find_by(number: 53).id # Persian
  },

  # Psyduck family (54-55)
  {
    pre_evolution_id: Pokemon.find_by(number: 54).id,  # Psyduck
    evolved_pokemon_id: Pokemon.find_by(number: 55).id # Golduck
  },

  # Mankey family (56-57)
  {
    pre_evolution_id: Pokemon.find_by(number: 56).id,  # Mankey
    evolved_pokemon_id: Pokemon.find_by(number: 57).id # Primeape
  },

  # Growlithe family (58-59)
  {
    pre_evolution_id: Pokemon.find_by(number: 58).id,  # Growlithe
    evolved_pokemon_id: Pokemon.find_by(number: 59).id # Arcanine
  },

  # Poliwag family (60-62)
  {
    pre_evolution_id: Pokemon.find_by(number: 60).id,  # Poliwag
    evolved_pokemon_id: Pokemon.find_by(number: 61).id # Poliwhirl
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 61).id,  # Poliwhirl
    evolved_pokemon_id: Pokemon.find_by(number: 62).id # Poliwrath
  },

  # Abra family (63-65)
  {
    pre_evolution_id: Pokemon.find_by(number: 63).id,  # Abra
    evolved_pokemon_id: Pokemon.find_by(number: 64).id # Kadabra
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 64).id,  # Kadabra
    evolved_pokemon_id: Pokemon.find_by(number: 65).id # Alakazam
  },

  # Machop family (66-68)
  {
    pre_evolution_id: Pokemon.find_by(number: 66).id,  # Machop
    evolved_pokemon_id: Pokemon.find_by(number: 67).id # Machoke
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 67).id,  # Machoke
    evolved_pokemon_id: Pokemon.find_by(number: 68).id # Machamp
  },

  # Bellsprout family (69-71)
  {
    pre_evolution_id: Pokemon.find_by(number: 69).id,  # Bellsprout
    evolved_pokemon_id: Pokemon.find_by(number: 70).id # Weepinbell
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 70).id,  # Weepinbell
    evolved_pokemon_id: Pokemon.find_by(number: 71).id # Victreebel
  },

  # Tentacool family (72-73)
  {
    pre_evolution_id: Pokemon.find_by(number: 72).id,  # Tentacool
    evolved_pokemon_id: Pokemon.find_by(number: 73).id # Tentacruel
  },

  # Geodude family (74-76)
  {
    pre_evolution_id: Pokemon.find_by(number: 74).id,  # Geodude
    evolved_pokemon_id: Pokemon.find_by(number: 75).id # Graveler
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 75).id,  # Graveler
    evolved_pokemon_id: Pokemon.find_by(number: 76).id # Golem
  },

  # Ponyta family (77-78)
  {
    pre_evolution_id: Pokemon.find_by(number: 77).id,  # Ponyta
    evolved_pokemon_id: Pokemon.find_by(number: 78).id # Rapidash
  },

  # Slowpoke family (79-80)
  {
    pre_evolution_id: Pokemon.find_by(number: 79).id,  # Slowpoke
    evolved_pokemon_id: Pokemon.find_by(number: 80).id # Slowbro
  },

  # Magnemite family (81-82)
  {
    pre_evolution_id: Pokemon.find_by(number: 81).id,  # Magnemite
    evolved_pokemon_id: Pokemon.find_by(number: 82).id # Magneton
  },

  # Doduo family (84-85)
  {
    pre_evolution_id: Pokemon.find_by(number: 84).id,  # Doduo
    evolved_pokemon_id: Pokemon.find_by(number: 85).id # Dodrio
  },

  # Seel family (86-87)
  {
    pre_evolution_id: Pokemon.find_by(number: 86).id,  # Seel
    evolved_pokemon_id: Pokemon.find_by(number: 87).id # Dewgong
  },

  # Grimer family (88-89)
  {
    pre_evolution_id: Pokemon.find_by(number: 88).id,  # Grimer
    evolved_pokemon_id: Pokemon.find_by(number: 89).id # Muk
  },

  # Shellder family (90-91)
  {
    pre_evolution_id: Pokemon.find_by(number: 90).id,  # Shellder
    evolved_pokemon_id: Pokemon.find_by(number: 91).id # Cloyster
  },

  # Gastly family (92-94)
  {
    pre_evolution_id: Pokemon.find_by(number: 92).id,  # Gastly
    evolved_pokemon_id: Pokemon.find_by(number: 93).id # Haunter
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 93).id,  # Haunter
    evolved_pokemon_id: Pokemon.find_by(number: 94).id # Gengar
  },

  # Drowzee family (96-97)
  {
    pre_evolution_id: Pokemon.find_by(number: 96).id,  # Drowzee
    evolved_pokemon_id: Pokemon.find_by(number: 97).id # Hypno
  },

  # Krabby family (98-99)
  {
    pre_evolution_id: Pokemon.find_by(number: 98).id,  # Krabby
    evolved_pokemon_id: Pokemon.find_by(number: 99).id # Kingler
  },

  # Voltorb family (100-101)
  {
    pre_evolution_id: Pokemon.find_by(number: 100).id,  # Voltorb
    evolved_pokemon_id: Pokemon.find_by(number: 101).id # Electrode
  },

  # Exeggcute family (102-103)
  {
    pre_evolution_id: Pokemon.find_by(number: 102).id,  # Exeggcute
    evolved_pokemon_id: Pokemon.find_by(number: 103).id # Exeggutor
  },

  # Cubone family (104-105)
  {
    pre_evolution_id: Pokemon.find_by(number: 104).id,  # Cubone
    evolved_pokemon_id: Pokemon.find_by(number: 105).id # Marowak
  },

  # Koffing family (109-110)
  {
    pre_evolution_id: Pokemon.find_by(number: 109).id,  # Koffing
    evolved_pokemon_id: Pokemon.find_by(number: 110).id # Weezing
  },

  # Rhyhorn family (111-112)
  {
    pre_evolution_id: Pokemon.find_by(number: 111).id,  # Rhyhorn
    evolved_pokemon_id: Pokemon.find_by(number: 112).id # Rhydon
  },

  # Horsea family (116-117)
  {
    pre_evolution_id: Pokemon.find_by(number: 116).id,  # Horsea
    evolved_pokemon_id: Pokemon.find_by(number: 117).id # Seadra
  },

  # Goldeen family (118-119)
  {
    pre_evolution_id: Pokemon.find_by(number: 118).id,  # Goldeen
    evolved_pokemon_id: Pokemon.find_by(number: 119).id # Seaking
  },

  # Staryu family (120-121)
  {
    pre_evolution_id: Pokemon.find_by(number: 120).id,  # Staryu
    evolved_pokemon_id: Pokemon.find_by(number: 121).id # Starmie
  },

  # Magikarp family (129-130)
  {
    pre_evolution_id: Pokemon.find_by(number: 129).id,  # Magikarp
    evolved_pokemon_id: Pokemon.find_by(number: 130).id # Gyarados
  },

  # Eevee family (133-136)
  {
    pre_evolution_id: Pokemon.find_by(number: 133).id,  # Eevee
    evolved_pokemon_id: Pokemon.find_by(number: 134).id # Vaporeon
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 133).id,  # Eevee
    evolved_pokemon_id: Pokemon.find_by(number: 135).id # Jolteon
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 133).id,  # Eevee
    evolved_pokemon_id: Pokemon.find_by(number: 136).id # Flareon
  },

  # Omanyte family (138-139)
  {
    pre_evolution_id: Pokemon.find_by(number: 138).id,  # Omanyte
    evolved_pokemon_id: Pokemon.find_by(number: 139).id # Omastar
  },

  # Kabuto family (140-141)
  {
    pre_evolution_id: Pokemon.find_by(number: 140).id,  # Kabuto
    evolved_pokemon_id: Pokemon.find_by(number: 141).id # Kabutops
  },

  # Dratini family (147-149)
  {
    pre_evolution_id: Pokemon.find_by(number: 147).id,  # Dratini
    evolved_pokemon_id: Pokemon.find_by(number: 148).id # Dragonair
  },
  {
    pre_evolution_id: Pokemon.find_by(number: 148).id,  # Dragonair
    evolved_pokemon_id: Pokemon.find_by(number: 149).id # Dragonite
  }
]

Evolution.create!(evolution_data)
