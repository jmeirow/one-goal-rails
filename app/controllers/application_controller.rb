
# require 'pry'
# require 'pry_debug'
require 'pp'

class ApplicationController < ActionController::Base
  include ControllerAuthentication
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :secured_page?, :check_for_admin


  before_filter :authenticate 

  private

  def secured_page?
    !public_page?
  end

  def public_page?
    ['/login', '/about', '/signup', '/home', '/sessions' , '/users', '/faq' ].include?(request.fullpath.strip) || request.fullpath.strip.start_with?('/password_resets')
  end

  def authenticate
    redirect_to( '/login', notice: "Please log in.") if must_log_in?
  end


  def must_log_in?
    secured_page? && !logged_in?
  end



  def logged_in?
    !session[:user_id].nil?
  end


  def check_for_admin
    is_admin = Administrator.all.collect{|x| x.user_id}.include?(session['user_id'])
    redirect_to new_goal_path , :notice => "You are NOT an administrator!" unless is_admin
  end



end
