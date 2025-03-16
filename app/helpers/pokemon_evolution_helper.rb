module PokemonEvolutionHelper
  def get_base_pokemon(pokemon)
    base = pokemon
    while base.pre_evolutions.present?
      base = base.pre_evolutions.first
    end
    base
  end

  def get_all_evolutions(pokemon, seen = Set.new)
    stages = [ [ pokemon ] ]
    current_stage = [ pokemon ]
    seen.add(pokemon.id)

    while current_stage.any?
      next_stage = []
      current_stage.each do |p|
        p.evolved_forms.each do |evolution|
          next_stage << evolution unless seen.include?(evolution.id)
          seen.add(evolution.id)
        end
      end
      stages << next_stage if next_stage.any?
      current_stage = next_stage
    end
    stages
  end
end
