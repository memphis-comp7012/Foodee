class AddUserRefToPerson < ActiveRecord::Migration
  def change
    add_column :people, :user, :reference
  end
end
