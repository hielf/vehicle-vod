class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :status, null: false, default: 1
      t.integer :sort, default: 0
      t.timestamps
    end

    add_index :categories, :name, unique: true
    add_column :columns, :category_id, :integer
    add_column :videos, :column_ids, :integer, default: [], array: true

  end
end
