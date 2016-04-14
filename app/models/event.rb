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
#  person_id   :integer
#

class Event < ActiveRecord::Base

	mount_uploader :image, ImageUploader

	validates :title, presence: true, format: { with: /\A[a-zA-Z ]+\z/, message: "no special characters and numbers can be present as event title"}
	validates :event_date, presence: true 
	validates :event_time, presence: true
	# validates :link, :presence => { :on => :validate_link }, allow_blank: true
	validates :link, allow_blank: true, format: { with: /\Ahttps?:\/\/.+/i }
	validate :event_date_is_valid_date
	validate :event_time_is_valid_time
	validate :event_date_cannot_be_in_the_past
	validate :event_time_cannot_be_in_the_past
	belongs_to :person
	has_one :location
	has_and_belongs_to_many :keywords
	accepts_nested_attributes_for :location
	accepts_nested_attributes_for :keywords
	has_many :foods
	accepts_nested_attributes_for :foods
	has_many :comments



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
	# def validate_link
	# 	url = URI.parse(:link) rescue false
	# 	if not(url.kind_of?(URI::HTTP)|| url.kind_of?(URI::HTTPS))
	# 		errors.add(:link, "not a valid URL")
	# 	end
	# end
end
