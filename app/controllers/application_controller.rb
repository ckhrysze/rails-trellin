class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login
  before_filter :require_gm
  
  private
  
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged"
      redirect_to :root
    end
  end

  def require_gm
    unless gm?
      flash[:error] = "GM only"
      redirect_to :root      
    end
  end
  
  def logged_in?
    !!current_user
  end

  def gm?
    false # @user.tagged_with('gm')
  end

  def current_user
    @user ||= session[:current_user_id] &&
      User.find_by_id(session[:current_user_id])
  end

end
