# == Schema Information
#
# Table name: session_counts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  login_date :datetime
#  created_at :datetime
#  updated_at :datetime
#

class SessionCount < ActiveRecord::Base
end
