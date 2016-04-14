class RemovePersonRefToUser < ActiveRecord::Migration
  def change
    remove_reference :users, :person, index: true, foreign_key: true
  end
end
