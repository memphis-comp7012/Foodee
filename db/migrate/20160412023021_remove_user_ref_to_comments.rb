class RemoveUserRefToComments < ActiveRecord::Migration
  def change
  	remove_reference :comments, :user
  end
end
