class AddEditNavColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :edit_nav_columns, :boolean, default: false
  end
end
