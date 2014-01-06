# == Schema Information
#
# Table name: buddies
#
#  id          :integer          not null, primary key
#  member_id_1 :integer
#  member_id_2 :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Buddy < ActiveRecord::Base
end
