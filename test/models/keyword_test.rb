# == Schema Information
#
# Table name: keywords
#
#  id         :integer          not null, primary key
#  tag        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


require 'test_helper'

class KeywordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@pizz = keywords(:pizza)
  end
  test "normal keyword should be valid" do
  	assert @pizz.valid?
  end

  test "keyword with empty tag should be invalid" do
  	@pizz.tag = ""
  	assert @pizz.invalid?
  end

  test "keyword containing special characters in tag should be invalid" do
  	@pizz.tag = "pizza#"
  	assert @pizz.invalid?
  end

  test "keyword containing numbers in tag should be invalid" do
  	@pizz.tag = "pizz12"
  	assert @pizz.invalid?
  end
end
