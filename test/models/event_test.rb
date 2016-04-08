# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  event_date  :date
#  event_time  :time
#  validity    :boolean
#  image       :string
#  link        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# created by Sambriddhi Mainali


require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@pizz = events(:free_pizza)
  end
  test "normal event should be valid" do
  	assert @pizz.valid?
  end
  test "event containing special characters in the title should be invalid" do
  	@pizz.title = "Free$ pizza$#"
  	assert @pizz.invalid?
  end
  
  test "event containing no title should be invalid" do
  	@pizz.title = ""
  	assert @pizz.invalid?
  end

  test "event containing no date should be invalid" do
  	@pizz.event_date = ""
  	assert @pizz.invalid?
  end

  test "event containing invalid date should be invalid" do
  	@pizz.event_date = "2016/23/35"
  	assert @pizz.invalid?
  end

  test "event with date prior to the current date should be invalid" do
  	@pizz.event_date = "02-02-2016"
  	assert @pizz.invalid?
  end

test "event containing no time should be invalid" do
  	@pizz.event_time = ""
  	assert @pizz.invalid?
  end

  test "event containing invalid time should be invalid" do
  	@pizz.event_time = "24:12"
  	assert @pizz.invalid?
  end

  test "event with time prior to the current time should be invalid" do
  	@pizz.event_date = Date.today
  	@pizz.event_time = "01:15"
  	assert @pizz.invalid?
  end


end
