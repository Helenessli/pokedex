class CreateEvolutions < ActiveRecord::Migration[8.0]
  def change
    create_table :evolutions do |t|
      t.references :pre_evolution, null: true, foreign_key: { to_table: :pokemons }
      t.references :evolved_pokemon, null: true, foreign_key: { to_table: :pokemons }

      t.timestamps
    end
  end
end
