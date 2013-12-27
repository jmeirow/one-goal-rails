

class Member < ActiveRecord::Base
 
  validates_presence_of :first_name, :last_name, :phone_number, :club_name 

  validate :buddy_selection 

  def self.for_user user 
    id = (user.class == User) ? user.id : user
    member = Goal.find_by_user_id(id)
    goal.nil? ? Member.new : goal
  end



  def self.entered_for_user? user 
    id = (user.class == User) ? user.id : user
    Member.where("user_id = ?", id).length > 0 
  end

  def self.new_with_email(email)
    mbr = Member.new
    mbr.email = email 
    mbr
  end




  def buddy_selection 
    puts "The value of 'wants_a_buddy is: #{wants_a_buddy}"
    unless ['yes','no'].include? self[:wants_a_buddy]
      errors.add :choose_a_buddy, ":  Must select 'Yes, match me with a buddy' or 'No, I will use my own buddy'.  " 
    end
  end

end
