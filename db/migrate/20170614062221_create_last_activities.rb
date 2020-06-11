class CreateLastActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :last_activities do |t|
      t.integer :user_id, null: false
      t.integer :request_times, null: false, default: 0
      t.datetime :last_activity_at, null: false, default: Time.zone.now
      t.timestamps
    end
    add_index :last_activities, :user_id, unique: true
  end
end
