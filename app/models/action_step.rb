require 'pp'

class ActionStep < ActiveRecord::Base

  paginates_per 5

  validate :target_date_format , :completed_date_format 

  validates_presence_of :description, :target_date

  def target_date_format
    begin
      #self['target_date'] =  
      @attributes['target_date'].to_s
    rescue Exception => e
      errors.add :target_date, ":  Must be entered in mm/dd/yyyy format'.  " 
    end
  end

  def completed_date_format
    begin
      if @attributes['completed'].nil? == false
        #self['completed'] = 
        @attributes['completed'].to_s
      end
    rescue Exception => e
      errors.add :completed_date, ":  Must be entered in mm/dd/yyyy format'.  " 
    end
  end


  def to_h
    {
      :id => id,
      :description => description,
      :target_date => target_date,
      :completed => completed,
      :goal_id => goal_id 
    }
  end


end
