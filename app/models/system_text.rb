# == Schema Information
#
# Table name: system_texts
#
#  id          :integer          not null, primary key
#  key         :string(255)
#  value       :text
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#

class SystemText < ActiveRecord::Base

  paginates_per 8


  validates_presence_of :key, :value, :description

  def self.text_for_key key 
    result  = SystemText.where("key = ?",key).first 
    if result.nil?
      "No System Text defined for key '#{key}'"
    else
      result.value
    end
  end

  def to_h
    {
      :id => id,
      :description => description,
      :key => key,
      :value => value
    }
  end

end
