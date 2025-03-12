class CreateTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :types do |t|
      t.string :name
      t.string :color_code

      t.timestamps
    end
    add_index :types, :name, unique: true
  end
end
