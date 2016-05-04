class CreateAttendedEvents < ActiveRecord::Migration
  def change
    create_table :attended_events do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
