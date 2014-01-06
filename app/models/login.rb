# == Schema Information
#
# Table name: logins
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  login_date_time :time
#  created_at      :datetime
#  updated_at      :datetime
#

class Login < ActiveRecord::Base
end
