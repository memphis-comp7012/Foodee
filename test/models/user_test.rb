# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  

   ####################################################################################################
  #-----------------------------Test cases for email address attribute--------------------------------

 test "users with nil email address should be invalid" do
      abc = users(:abc)
      abc.email = nil
      assert abc.invalid?
  end
  
  test "users with unique email address should be valid" do
    abc = users(:abc)
    abc1 = users(:abc1)
    abc1.email = abc.email
    assert abc1.invalid?
  end

    test "users with whitespace email should be invalid" do
      abc = users(:abc)
      abc.email = '  '
      assert abc.invalid?
  end

  test "email address without @memphis.edu should be invalid" do
        abc = users(:abc)
        abc.email = 'abc@gmail.com'
        assert abc.invalid?
    end
	
#--------------------------End of test cases for email attribute-----------------------------------------
#########################################################################################################

#########################################################################################################
#-------------------------Test cases for password attribute----------------------------------------------

test "users with nil password should be invalid" do
        abc = users(:abc)
      abc.password = nil
      assert abc.invalid?
  end

test "users with empty password should be invalid" do
        abc = users(:abc)
      abc.password = ''
      assert abc.invalid?
  end

test "users with whitespace password should be invalid" do
        abc = users(:abc)
      abc.password = '   '
      assert abc.invalid?
  end

test "users with minimum 6 characters including atleast one number and one upper case in password should be valid" do
        abc = users(:abc)
      abc.password = '1Adfrvgfd'
      assert abc.valid?
  end

test "users with less than 6 characters should be invalid" do
        abc = users(:abc)
      abc.password = 'aszx'
      assert abc.invalid?
  end

#---------------------End of test cases for password attribute------------------------------------------
########################################################################################################

end
