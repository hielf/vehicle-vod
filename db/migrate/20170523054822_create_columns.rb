class CreateColumns < ActiveRecord::Migration[5.0]
  def change
    create_table :columns do |t|
      t.string :name, limit: 50
      t.string :en_name
      t.integer :videos_count, default: 0, null: false
      t.integer :status, default: 1, null: false
      t.integer :sort

      t.timestamps
    end
    add_index :columns, :name, unique: true
    add_index :columns, :status
  end
end
