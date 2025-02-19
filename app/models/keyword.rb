# == Schema Information
#
# Table name: keywords
#
#  id         :integer          not null, primary key
#  tag        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#

class Keyword < ActiveRecord::Base
	validates :tag, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "no special characters and numbers can appear as tag"}
	has_and_belongs_to_many :events

	def self.filter(filter)
		where("tag LIKE ?", "%#{filter}%")
	end
end
