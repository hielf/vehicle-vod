class CreateStartPages < ActiveRecord::Migration[5.0]
  def change
    create_table :start_pages do |t|
      t.string :name, null: false
      t.string :url
      t.string :cover
      t.integer :obj_id
      t.integer :obj_type
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end

    add_index :start_pages, :name
    add_index :start_pages, :start_time
    add_index :start_pages, :end_time
  end
end
