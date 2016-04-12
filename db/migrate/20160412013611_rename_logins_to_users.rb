class RenameLoginsToUsers < ActiveRecord::Migration
  def change
  end
  def self.up
  	rename_table :logins, :users
  end
  def self.down
  	rename_table :users, :logins
  end
end
