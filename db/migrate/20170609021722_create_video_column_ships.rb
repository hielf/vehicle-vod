class CreateVideoColumnShips < ActiveRecord::Migration[5.0]
  def change
    create_table :video_column_ships do |t|
      t.integer :video_id, null: false
      t.integer :column_id, null: false
      t.integer :sort, default: 0, null: false

      t.timestamps
    end

    add_index :video_column_ships, :video_id
    add_index :video_column_ships, :column_id
    add_index :video_column_ships, [:video_id, :column_id], unique: true
  end
end
