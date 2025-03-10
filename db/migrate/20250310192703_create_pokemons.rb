class CreatePokemons < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :number
      t.boolean :male
      t.text :description
      t.integer :hp
      t.integer :atk
      t.integer :def
      t.integer :spatk
      t.integer :spdef
      t.integer :spd
      t.integer :tot
      t.float :height
      t.float :weight

      t.timestamps
    end
  end
end
