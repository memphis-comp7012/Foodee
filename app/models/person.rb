# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
	validates :first_name, presence: true, format: { with: /\A[A-Za-z][A-Za-z]{3,20}\z/, message: "allow letters of length between 3 and 20"}, allow_blank: false
	validates :last_name, presence: true, format: { with: /\A[A-Za-z][A-Za-z]{3,20}\z/, message: "allow letters of length between 3 and 20"}, allow_blank: false

	has_many :events
	has_one :user
	has_many :comments
end
