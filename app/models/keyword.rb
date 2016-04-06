# == Schema Information
#
# Table name: keywords
#
#  id         :integer          not null, primary key
#  tag        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Keyword < ActiveRecord::Base
	validates :tag, presence: true, format: { with: /[A-Za-z]+/, message: "no special characters and numbers can appear as tag"}
	belongs_to :event 
end
