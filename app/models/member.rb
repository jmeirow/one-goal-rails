

class Member < ActiveRecord::Base
 




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

end
