# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  item       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Food < ActiveRecord::Base
	validates :item, presence: true, format: { with: /\A[A-Za-z][A-Za-z]{3,20}\z/, message: "allow letters of length between 3 and 20"}, allow_blank: false
end
