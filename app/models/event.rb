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

class Event < ActiveRecord::Base
	validates :title, presence: true, format: { with: /\A[A-Za-z ]+\z/, message: "no special characters and numbers can be present as event title"}
	validates :event_date, presence: true, format: { with: /[0][1-9]{2}|[1][0-2]{2}\-[0-2]{1}[0-9]{1}|[3][0-1]{2}\-[2016]{4}/, message: "invalid date" }
	validates :event_time, presence: true, format: { with: /[1]{1}[0-9]{1}|[2]{1}[0-3]{1}\:[0-5]{1}{0-9}{1}/, message: "invalid time"}
	
	belongs_to :user
	has_one :location
	has_many :keywords
end
