# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  item       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#

require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end  	
    def setup
  		@pizza = foods(:pizza)
    end

   	test "normal food should be valid" do
		assert @pizza.valid?
	end

   	
   	test "food with empty item should be invalid" do
		@pizza.item = ""
		assert @pizza.invalid?
	end

   	test "food item with less than 3 charactors should be invalid" do
		@pizza.item = "pi"
		assert @pizza.invalid?
	end


   	test "food item with special charactor should be invalid" do
		@pizza.item = "@pizza"
		assert @pizza.invalid?
	end
end
