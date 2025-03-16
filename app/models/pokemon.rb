class Pokemon < ApplicationRecord
  has_many :pokemon_types, dependent: :destroy
  has_many :types, through: :pokemon_types

  # Evolution relationships
  has_many :evolutions_from, class_name: "Evolution", foreign_key: "evolved_pokemon_id"
  has_many :evolutions_to, class_name: "Evolution", foreign_key: "pre_evolution_id"

  has_many :pre_evolutions, through: :evolutions_from, source: :pre_evolution
  has_many :evolved_forms, through: :evolutions_to, source: :evolved_pokemon

  # Helper methods
  def base_form
    current = self
    while current.pre_evolutions.any?
      current = current.pre_evolutions.first
    end
    current
  end

  def evolution_family
    base = base_form
    family = { base.id => { pokemon: base, evolutions: [] } }

    # Queue for breadth-first traversal
    queue = [ base ]

    while queue.any?
      current = queue.shift

      current.evolved_forms.each do |evolved|
        family[current.id][:evolutions] << {
          pokemon: evolved
        }

        unless family[evolved.id]
          family[evolved.id] = { pokemon: evolved, evolutions: [] }
          queue << evolved
        end
      end
    end

    family
  end
end
