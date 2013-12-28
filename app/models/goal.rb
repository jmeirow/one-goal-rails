class Goal < ActiveRecord::Base


  validates_presence_of :description

  def self.for_user user 
    id = (user.class == User) ? user.id : user
    goal = Goal.find_by_user_id(id)
    goal.nil? ? Goal.new : goal
  end



  def self.entered_for_user? user 
    id = (user.class == User) ? user.id : user
    Goal.where("user_id = ?", id).length > 0 
  end
  

end
