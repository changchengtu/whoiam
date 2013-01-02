class BookStreamController < ApplicationController


        before_filter :set_current_user

	def index
		@allbooks= Book.all
	end
	def new
	end

	def create
		@newbook = Book.new(params[:newbook])
		@newbook.save
		redirect_to :book_stream => :index
	end

        protected
        def set_current_user
                @current_user ||= User.find_by_id(session[:user_id])
                redirect_to introduce_index_path and return unless @current_user
        end


end
