class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, limit: 50
      t.string :mobile
      t.string :password_digest
      t.string :nickname, limit: 50
      t.string :avatar
      t.integer :gender
      t.integer :point
      t.integer :roles, array: true, default: []
      t.integer :videos_count, default: 0, null: false
      t.integer :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.string :current_sign_in_ip, limit: 50
      t.datetime :last_sign_in_at
      t.string :last_sign_in_ip, limit: 50
      t.integer :failed_attempts
      t.datetime :locked_at
      t.string :access_token
      t.datetime :last_activity_at

      t.timestamps
    end

    add_index :users, :mobile
    add_index :users, :access_token
  end
end
