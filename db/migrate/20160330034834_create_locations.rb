class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :department
      t.string :building
      t.string :floor
      t.integer :room

      t.timestamps null: false
    end
  end
end
