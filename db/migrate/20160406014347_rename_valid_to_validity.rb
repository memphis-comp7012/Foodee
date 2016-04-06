class RenameValidToValidity < ActiveRecord::Migration
  def change
  	 rename_column :events, :valid, :validity
  end
end
