class Event < ActiveRecord::Base
	mount_uploader :image, ImageUploader
 	attr_accessor :remove_image
	
	validates :title, presence: true, format: { with: /\A[a-zA-Z ]+\z/, message: "no special characters and numbers can be present as event title"}
	validates :event_date, presence: true 
	validates :event_time, presence: true
	validates :link, allow_blank: true, format: { with: /\Ahttps?:\/\/.+/i }
	validate :event_date_is_valid_date
	validate :event_time_is_valid_time
	validate :event_date_cannot_be_in_the_past
	validate :event_time_cannot_be_in_the_past
	belongs_to :person
	has_one :location, class_name: 'Location', foreign_key: 'event_id'
	has_and_belongs_to_many :keywords
	accepts_nested_attributes_for :location
	accepts_nested_attributes_for :keywords
	has_and_belongs_to_many :foods
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
	def setup
		@image_name = @image.file.filename
		
	end
	def remove_image
		@id = self[:id]
		@image_name = self[:image]
		File.delete("#{Rails.root}/public/uploads/event/image/#{@id}/#{@image_name}")
    end

    def self.search_by_title(search)
  		where("title LIKE ? AND validity != ?", "%#{search}%",false)   		
	end

	def self.search_by_keyword(search)
		@key = Keyword.find_by_tag(search)
		if @key 
			keyid = @key.id 
		end
	    joins(:keywords).where("keyword_id = ? AND validity != ?", "#{keyid}",false)	    
	end

	def self.search_by_food(search)
		@foo = Food.find_by_item(search)
		if @foo 
			fooid = @foo.id 
		end
	    joins(:foods).where("food_id = ? AND validity != ?", "#{fooid}",false)	    
	end

	def self.search_by_location(search)
		joins(:location).where('department LIKE ? or building LIKE ? AND validity != ?', "%#{search}%", "%#{search}%",false)
	end

	def self.filter(filter)
		where("title LIKE ? or event_date LIKE ? or event_time LIKE?", "%#{filter}%", "%#{filter}%", "%#{filter}%")
		
	end

end