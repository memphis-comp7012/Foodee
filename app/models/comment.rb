# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  comment    :text
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#  person_id  :integer
#

#Created by : Tarika Bedse 



class Comment < ActiveRecord::Base
	
	validates :comment, presence: true
	validates :score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10, message: "score should be given from 1 to 10."}

	
	belongs_to :person
	belongs_to :event
end
