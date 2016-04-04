# == Schema Information
#
# Table name: logins
#
#  id         :integer          not null, primary key
#  email      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Login < ActiveRecord::Base
end
