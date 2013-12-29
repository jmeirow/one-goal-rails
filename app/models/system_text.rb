class SystemText < ActiveRecord::Base

  paginates_per 5


  def self.text_for_key key 
    result  = SystemText.where("key = ?",key).first 
    if result.nil?
      "No System Text defined for key '#{key}'"
    else
      result.value
    end
  end
end
