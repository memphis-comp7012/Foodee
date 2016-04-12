class RemoveUserRefToEvents < ActiveRecord::Migration
  def change
  	remove_reference :events, :user
  end
end
