class AddUrlToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :source_url, :string
  end
end
