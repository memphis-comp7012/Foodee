# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  department :string
#  building   :string
#  floor      :string
#  room       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Location < ActiveRecord::Base
	validates :department, presence: true, format: { with: /\A[A-Za-z]+\z/, message: "no special characters and numbers can be present as desired department"}
	validates :building, presence: true, format: { with: /\A[A-Za-z]+\z/, message: "no special characters and numbers can be present as desired building"} 
	validates :floor, presence: true, format: { with: /\A[A-Za-z]+|[0-9]+\z/, message: "no special characters can be present as desired floor"}
	validates :room, allow_blank: true, format: { with: /[0-9]+/, message: "room number should only contain integer numbers"}
end
