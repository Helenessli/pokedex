class Evolution < ApplicationRecord
  belongs_to :pre_evolution, class_name: "Pokemon", optional: true
  belongs_to :evolved_pokemon, class_name: "Pokemon", optional: true
end
