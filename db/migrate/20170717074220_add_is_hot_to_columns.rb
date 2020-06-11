class AddIsHotToColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :columns, :is_hot, :boolean, null: false, default: false
  end
end
