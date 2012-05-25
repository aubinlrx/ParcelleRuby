class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :login_required
  
  private 
  
  def current_user 
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id] 
  end
  
  def login_required
    if session[:user_id].nil?
      redirect_to login_path, :notice => "You are not logged"
    elsif  User.find_by_id(session[:user_id]).nil?
      redirect_to login_path, :notice => "No user corresponding in database"
      return nil
    end
  end
  
end
