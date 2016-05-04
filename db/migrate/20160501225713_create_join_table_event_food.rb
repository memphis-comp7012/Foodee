class CreateJoinTableEventFood < ActiveRecord::Migration
  def change
    create_join_table :events, :foods do |t|
      # t.index [:event_id, :food_id]
      # t.index [:food_id, :event_id]
    end
  end
end
