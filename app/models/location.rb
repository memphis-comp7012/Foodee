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
end
