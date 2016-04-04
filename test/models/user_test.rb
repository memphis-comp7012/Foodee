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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  	# test "the truth" do
  	#   assert true
  	# end
  	test "Empty first name should be valid" do
		megha = authors(:megha)
		assert megha.valid?
	end
	
  	test "Author without unique email should be invalid" do
		megha = authors(:megha)
		megha2 = authors(:megha2)
		megha2.email = megha.email
		assert megha2.invalid?
	end
end
