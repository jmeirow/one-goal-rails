# == Schema Information
#
# Table name: clubs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  area       :string(255)
#  division   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Club < ActiveRecord::Base
end
