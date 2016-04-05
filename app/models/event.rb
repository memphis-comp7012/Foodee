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


class Event < ActiveRecord::Base
	validates :title, presence: true, format: { with: /\A[A-Za-z]+\z/, message: "no special characters and numbers can be present as event title"}
	validates :description, allow_blank: true
	validates :event_date, presence: true, format: { with: /[1-2]{1}[0-9]{3}\-[0-1]{1}[0-9]{1}\-[0-3]{1}[0-9]{1}/, message: "invalid date" }
	validates :event_time, presence: true, format: { with: /[1]{1}[0-9]{1}|[2]{1}[0-3]{1}\:[0-5]{1}{0-9}{1}/, message: "invalid time"}
	validates :image, allow_blank: true
	validates :link, allow_blank: true

	belongs_to :user
	has :location
end
