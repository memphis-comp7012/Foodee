# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

# Created by Qiong

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  	# test "the truth" do
  	#   assert true
  	# end
  	def setup
  		@burge = people(:burge)
  	end

  	test "normal person should be valid" do
		assert @burge.valid?
	end
	

  	test "person's first name contains special charactor should be invalid" do
		@burge.first_name = "@Qiong"
		assert @burge.invalid?
	end


	test "person's last name contains special charactor should be invalid" do
		@burge.last_name = "@you"
		assert @burge.invalid?
	end

	
	test "person's first name contains less than 3 charactor should be invalid" do
		@burge.first_name = "qi"
		assert @burge.invalid?
	end


	test "person's last name contains less than 3 charactor should be invalid" do
	
		@burge.last_name = "yu"
		assert @burge.invalid?
	end


	test "empty first_name should be invalid" do
		@burge.first_name = ""
		assert @burge.invalid?
	end


	test "empty last_name should be invalid" do
		@burge.last_name = ""
		assert @burge.invalid?
	end

end
