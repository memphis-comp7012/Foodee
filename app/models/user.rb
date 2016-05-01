# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   
  validates :email, uniqueness: true, presence: true , format: { with: /\A[A-Za-z][A-Za-z0-9]*@memphis.edu\z/, message: " - Enter valid memphis.edu email address e.g. abc@memphis.edu"}, allow_blank: false
  validates :password, presence: true, length: { minimum: 6 }, format: { with: /\A(?=.*[a-zA-Z])(?=.*[A-Z])(?=.*[0-9]).{6,}\z/, message: "must be at least 6 characters and include one number and one upper case letter."}, allow_blank: false

  has_one :person, autosave: true
  accepts_nested_attributes_for :person
end
