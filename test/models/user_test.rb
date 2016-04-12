# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  ####################################################################################################
  #-----------------------------Test cases for email address attribute--------------------------------


    test "users with nil email address should be invalid" do
        tarika = users(:tarika)
	    tarika.email = nil
	    assert tarika.invalid?
	end

    test "users with unique email address should be valid" do
	    tarika = users(:tarika)
		tarika1 = users(:tarika1)
		tarika1.email = tarika.email
		 	assert tarika1.invalid?
	end

    test "users with whitespace email should be invalid" do
	    tarika = users(:tarika)
	    tarika.email = '  '
	    assert tarika.invalid?
	end

	test "users with valid email address should be valid" do
        tarika = users(:tarika)
	   	assert tarika.valid?
	end

	test "email address with @memphis.edu should be valid" do
	    tarika = users(:tarika)
        tarika.email = tarika@memphis.edu
        assert tarika.valid?
    end

    test "email address without @memphis.edu should be invalid" do
        tarika = users(:tarika)
        tarika.email = tarika@gmail.com
        asssert tarika.invalid?
    end

#--------------------------End of test cases for email attribute-----------------------------------------
#########################################################################################################

#########################################################################################################
#-------------------------Test cases for password attribute----------------------------------------------

 test "users with nil password should be invalid" do
        tarika = users(:tarika)
	    tarika.password = nil
	    assert tarika.invalid?
	end

test "users with empty password should be invalid" do
        tarika = users(:tarika)
	    tarika.password = ''
	    assert tarika.invalid?
	end

test "users with whitespace password should be invalid" do
        tarika = users(:tarika)
	    tarika.password = '   '
	    assert tarika.invalid?
	end

test "users with minimum 6 characters including atleast one number and one upper case in password should be valid" do
        tarika = users(:tarika)
	    tarika.password = '1Adfrvgfd'
	    assert tarika.valid?
	end

test "users with less than 6 characters should be invalid" do
        tarika = users(:tarika)
	    tarika.password = 'aszx'
	    assert tarika.invalid?
	end

#---------------------End of test cases for password attribute------------------------------------------
########################################################################################################

end












