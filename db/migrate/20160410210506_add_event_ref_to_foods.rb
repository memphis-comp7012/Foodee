#Created by : Tarika Bedse 

class AddEventRefToFoods < ActiveRecord::Migration
  def change
    add_reference :foods, :event, index: true, foreign_key: true
  end
end
