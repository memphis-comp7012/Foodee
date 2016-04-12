class RenameUsersToPeople < ActiveRecord::Migration
  def change
  end
  def self.up
  	rename_table :users, :people
  end
  def self.down
  	rename_table :people, :users
  end
end
