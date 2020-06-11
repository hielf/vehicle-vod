class AddProvinceToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :province, :string
  end
end
