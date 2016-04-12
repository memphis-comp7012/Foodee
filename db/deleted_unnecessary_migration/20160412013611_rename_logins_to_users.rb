class RenameLoginsToUsers < ActiveRecord::Migration
  def change
  	rename_table :logins, :users
  end
end
