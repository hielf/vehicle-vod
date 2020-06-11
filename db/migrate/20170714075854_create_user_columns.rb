class CreateUserColumns < ActiveRecord::Migration[5.0]
  def change
    create_table :user_columns do |t|
      t.integer :user_id, null: false
      t.integer :column_id, null: false
      t.integer :status, default: 1
      t.timestamps
    end
    add_index :user_columns, :user_id
    add_index :user_columns, :column_id
    add_index :user_columns, [:user_id, :column_id], unique: true
  end
end
