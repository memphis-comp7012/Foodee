class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :item

      t.timestamps null: false
    end
  end
end
