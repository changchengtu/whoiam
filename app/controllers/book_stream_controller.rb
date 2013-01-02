class BookStreamController < ApplicationController

        
        before_filter :current_user
        protected
        def current_user
                @current_user ||= User.find_by_id(session[:user_id])
                redirect_to introduce_index_path and return unless @current_user
        end

	def index
		@allbooks = Book.select(:book_name).all
	end

	def new
	end

	def create
		@newbook = Book.new(params[:newbook])
		@newbook.save
		redirect_to :book_stream => :index
	end
end
