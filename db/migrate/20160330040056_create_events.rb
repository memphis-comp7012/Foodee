class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :event_date
      t.time :event_time
      t.boolean :valid
      t.string :image
      t.string :link

      t.timestamps null: false
    end
  end
end
