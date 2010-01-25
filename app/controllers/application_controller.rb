# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def logout
    session[:logout_requested] = true
    session[:logged_in] = false
    flash[:notice] = "You have logged out successfully"
    redirect_to(root_path)
  end
  
  USER_NAME, PASSWORD = "admin", "defaultpassword"
  private
    def authenticate
      session[:logged_in] = authenticate_or_request_with_http_basic do |user_name, password|
        user_name == USER_NAME && password == PASSWORD && session[:logout_requested] != true
      end
      session[:logout_requested] = nil
    end
end
