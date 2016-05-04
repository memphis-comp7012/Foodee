class AddPersonRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :person, index: true, foreign_key: true
  end
end
