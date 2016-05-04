class AddEventRefToKeywords < ActiveRecord::Migration
  def change
    add_reference :keywords, :event, index: true, foreign_key: true
  end
end
