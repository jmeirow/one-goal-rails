# == Schema Information
#
# Table name: administrators
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Administrator < ActiveRecord::Base
end
