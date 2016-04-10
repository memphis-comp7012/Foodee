# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  department :string
#  building   :string
#  floor      :string
#  room       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#
# created by Sambriddhi Mainali


require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@fit = locations(:fit)
  end
  test "normal location should be valid" do
  	assert @fit.valid?
  end

  test "location with no building should be invalid" do
  	@fit.building = ""
  	assert @fit.invalid?
  end

  test "location with building containing numbers should be invalid" do
  	@fit.building = "FIT12"
  	assert @fit.invalid?
  end

  test "location with building having special characters should be invalid" do
  	@fit.building = "FIT@!"
  	assert @fit.invalid?
  end

  test "location with no floor should be invalid" do
  	@fit.floor = ""
  	assert @fit.invalid?
  end

  test "location with floor having special characters should be invalid" do
  	@fit.floor = "first$$"
  	assert @fit.invalid?
  end

  test "location with no room number should be valid" do
  	@fit.room = ""
  	assert @fit.valid?
  end

  test "location with room number containing alphabets should be invalid" do
  	@fit.room = "12C"
  	assert @fit.invalid?
  end

  test "location with room number having special characters should be invalid" do
  	@fit.room = '1$$'
  	assert @fit.invalid?
  end
end
