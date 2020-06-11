class AddKeywordToColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :columns, :keyword, :string
  end
end
