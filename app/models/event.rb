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

class Event < ActiveRecord::Base
	validates :title, presence: true, format: { with: /\A[a-zA-Z ]+\z/, message: "no special characters and numbers can be present as event title"}
	# validates :event_date, presence: true, format: { with: /[2016]{4}\-[0-2][0-9]{2}|[3][0-1]{2}\-[0][1-9]{2}|[1][0-2]{2}/, message: "invalid date" }# , :after_or_on => Date.today 
	# validates :event_time, presence: true, format: { with: /[1]{1}[0-9]{1}|[2]{1}[0-3]{1}\:[0-5]{1}{0-9}{1}/, message: "invalid time"}
	validate :event_date_is_valid_date
	validate :event_time_is_valid_time
	validate :event_date_cannot_be_in_the_past
	validate :event_time_cannot_be_in_the_past
	belongs_to :user
	has_one :location
	has_many :keywords

	def event_date_is_valid_date
    	if !event_date.is_a?(Date)
      		errors.add(:event_date, 'must be a valid date') 
    	end
  	end

  	def event_time_is_valid_time
  		if !event_time.is_a?(Time)
  			errors.add(:event_time, 'must be a valid time')
  		end
  	end

	def event_date_cannot_be_in_the_past
	    if event_date.present? && event_date < Date.today
	      errors.add(:event_date, "can't be in the past")
	    end
  	end    
	def event_time_cannot_be_in_the_past
		if event_date == Date.today && event_time < Time.now
			errors.add(:event_time, "can't be in the past")
		end
	end
end
