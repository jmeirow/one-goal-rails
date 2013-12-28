
class SessionsController < ApplicationController
 

  def home
  end

  def about

  end

  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to '/determine_next_step'
    else
      flash.now[:alert] = "Invalid login or password."
      render :action => 'new'
    end
  end



  def determine_next_step

    user = User.find(session[:user_id].to_i)

    next_step = SessionsController.get_next_step(user) 

    if next_step == SessionsController.member_info
      redirect_to new_member_path, :notice => "Please provide the following information about yourself."
    elsif next_step == SessionsController.goal 
      redirect_to  new_goal_path, :notice => "It's time to define your goal."
    elsif next_step == SessionsController.action_items
      redirect_to  action_steps_path, :notice => "Logged in successfully."
    end 

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "You have been logged out."
  end


  def logout
    session[:user_id] = nil
    redirect_to home_url, :notice => "You have been logged out."
  end

  def self.get_next_step user 
    mbr = Member.entered_for_user?(user)
    goal = Goal.entered_for_user?(user)
    if !mbr && !goal
      return self.member_info
    elsif mbr && !goal
      return self.goal
    else
      return self.action_items
    end
  end 

  def self.action_items 
    'action_items'
  end
  
  def self.member_info
    'member_info'
  end
  def self.goal
    'goal'
  end



end
