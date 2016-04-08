# == Schema Information
#
# Table name: logins
#
#  id         :integer          not null, primary key
#  email      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Login < ActiveRecord::Base

	validates :email, uniqueness: true, presence: true , format: { with: /\A[A-Za-z][A-Za-z0-9]*@memphis.edu\z/, message: " - Enter valid memphis.edu email address e.g. abc@memphis.edu"}, allow_blank: false
	validates :password, presence: true, length: { minimum: 6 }, format: { with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\z/, message: "must be at least 6 characters and include one number and one upper case letter."}, allow_blank: false

end
