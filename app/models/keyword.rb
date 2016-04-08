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
# created by Sambriddhi Mainali

class Keyword < ActiveRecord::Base
	validates :tag, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "no special characters and numbers can appear as tag"}
	belongs_to :event 
end
