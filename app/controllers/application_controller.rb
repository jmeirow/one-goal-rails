require 'pp'

class ApplicationController < ActionController::Base
  include ControllerAuthentication
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :authenticate 

  private


  def authenticate
    redirect_to( '/login', notice: "Please log in.") if must_log_in?
  end


  def must_log_in?
    secured_page? && !logged_in?
  end



  def logged_in?
    !session[:user_id].nil?
  end



  def secured_page?
    ['/login', '/about', '/signup', '/home', '/sessions' , '/users' ].include?(request.fullpath.strip) == false
  end

end
