require 'pp'

class ActionStep < ActiveRecord::Base


  validates_presence_of :description, :target_date

  validate :target_date_format, :completed_date_format 


  def target_date_format
    puts "TARGET DATE = #{self['target_date']}"
    pp @attributes
    begin
      dt = Date._strptime(self['target_date'], '%m/%d/%Y')
    rescue Exception => e
      errors.add :target_date, ":  Must be entered in mm/dd/yyyy format'.  " 
    end
  end

  def completed_date_format
      puts "COMPLETED DATE = #{self['completed_date']}"
      pp @attributes
    begin
      if self['completed_date'].nil? == false
        dt = Date._strptime(self['target_date'], '%m/%d/%Y')
      end
    rescue Exception => e
      errors.add :completed_date, ":  Must be entered in mm/dd/yyyy format'.  " 
    end
  end


end
