# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  event_date  :date
#  event_time  :time
#  valid       :boolean
#  image       :string
#  link        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
