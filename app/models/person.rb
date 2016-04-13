# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  first_name :string
#  last_name  :string
#  created_at :datetime
#  updated_at :datetime
#  user       :reference
#

class Person < ActiveRecord::Base
	validates :first_name, presence: true, format: { with: /\A[A-Za-z][A-Za-z]{3,20}\z/, message: "allow letters of length between 3 and 20"}, allow_blank: false
	validates :last_name, presence: true, format: { with: /\A[A-Za-z][A-Za-z]{3,20}\z/, message: "allow letters of length between 3 and 20"}, allow_blank: false

    belongs_to :user
  
	has_many :events
	has_many :comments
end
