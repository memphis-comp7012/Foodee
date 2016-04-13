# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  first_name :string
#  last_name  :string
#  created_at :datetime
#  updated_at :datetime
#  user       :reference
#

module PeopleHelper
end
