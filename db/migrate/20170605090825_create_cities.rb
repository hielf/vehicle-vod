class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.string :abbr
      t.integer :sort

      t.timestamps
    end
    add_index :cities, :name, unique: true
    add_index :cities, :abbr
  end
end
