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
  
  def self.percent_complete user
    id = (user.class == User) ? user.id : user
    goal = Goal.find_by_user_id(id)
    return 0.0 if goal.nil?
    return 0.0 if ActionStep.where("goal_id = ?", goal.id).count == 0
    total = ActionStep.where("goal_id = ?", goal.id).count * 1.0
    completed = ActionStep.where("goal_id = ? and completed is not NULL", goal.id).count * 1.0
    puts total
    puts completed
    return   (100 * (completed / total)).round(2).to_s
  end


  def self.marquee_text

    marquee_goals = Array.new 
    goals = Goal.all.each do |goal|
      x = {}
      x[:goal] = goal.description
      user = User.find(goal.user_id)
      member = Member.where("user_id = ?", user.id).first
      marquee_goals << "#{member.first_name} #{member.last_name}: '#{goal.description}' #{Goal.percent_complete(user)}% complete." 
    end 

    marquee_goals.join("....    ")


  end

end
