class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :video_id, null: false
      t.text :body, null: false
      t.integer :status, default: 1, null: false
      t.integer :likes_count, default: 0
      t.integer :reply_to_id
      t.string :action

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :video_id
  end
end
