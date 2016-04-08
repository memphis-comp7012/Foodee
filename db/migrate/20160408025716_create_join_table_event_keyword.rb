class CreateJoinTableEventKeyword < ActiveRecord::Migration
  def change
    create_join_table :Events, :Keywords do |t|
      # t.index [:event_id, :keyword_id]
      # t.index [:keyword_id, :event_id]
    end
  end
end
