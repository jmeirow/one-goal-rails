# == Schema Information
#
# Table name: web_resources
#
#  id                     :integer          not null, primary key
#  url                    :string(255)
#  description            :string(255)
#  recommending_member_id :integer
#  status                 :string(255)
#  declined_reason        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class WebResource < ActiveRecord::Base



  validates :declined_reason, presence: true, if: :resource_declined?
 
  def resource_declined?
    status == WebResource.declined
  end 
  

  paginates_per 8


  def recommending_member
    Member.find(recommending_member_id)
  end
  

  def self.approved
    'approved'
  end
  
  def self.pending
    'pending'
  end

  def self.declined
    'declined'
  end

end
