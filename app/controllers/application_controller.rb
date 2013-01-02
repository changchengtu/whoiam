class ApplicationController < ActionController::Base
  	protect_from_forgery
	
   	before_filter :current_user 
	protected
  	def current_user
    		@current_user ||= User.find(session[:user_id]) if session[:user_id]
		redirect_to 'auth/:provider/callback' and return unless @current_user
  	end
  	helper_method :current_user
end
