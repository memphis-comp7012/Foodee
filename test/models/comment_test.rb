# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  comment    :text
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

#######################################################################################################
#------------------Test cases for comment attribute----------------------------------------------------

test "nil comments should be invalid" do
        tarika = comments(:tarika)
	    tarika.comment = nil
	    assert tarika.invalid?
	end

 test "empty comment should be invalid" do
        tarika = logins(:tarika)
	    tarika.email = ''
	    assert tarika.invalid?
	end

 test "any text should be valid" do
        tarika = logins(:tarika)
	    tarika.email = 'I liked the event'
	    assert tarika.valid?
	end

#---------------------------End of test cases for comment attribute-------------------------------------
########################################################################################################

########################################################################################################S
#--------------------------Test cases for score attribute-----------------------------------------------

 test "nil score should be invalid" do
        tarika = logins(:tarika)
	    tarika.email = nil
	    assert tarika.invalid?
	end

 test "empty score should be invalid" do
        tarika = logins(:tarika)
	    tarika.email = ''
	    assert tarika.invalid?
	end


 test "score with integer value between 1 and 10 inclusive should be valid" do
        tarika = logins(:tarika)
	    tarika.email = 10
	    assert tarika.valid?
	end

#----------------------End of test cases for score attribute-------------------------------------------
#######################################################################################################

end
