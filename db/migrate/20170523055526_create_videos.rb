class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.integer :user_id
      t.integer :column_id
      t.integer :status
      t.string :src
      t.string :cover
      t.integer :pv, default: 0
      t.integer :pv_offset
      t.integer :favors_count, default: 0
      t.integer :likes_count, default: 0

      t.timestamps
    end
    add_index :videos, :name, unique: true
    add_index :videos, :column_id
    add_index :videos, :status
  end
end
