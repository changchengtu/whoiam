class ApplicationController < ActionController::Base
	protect_from_forgery
	private
  	def current_user
    		@current_user ||= User.find(session[:user_id]) if session[:user_id]
  	end
  	helper_method :current_user
	
        protected
        def set_current_user
                @current_user ||= User.find_by_id(session[:user_id])
                redirect_to introduce_index_path and return unless @current_user
        end

end
