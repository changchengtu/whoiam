class MybookStreamController < ApplicationController
	before_filter :set_current_user
	def index
		@readedbooks = User.find(current_user.id).readed_books.all
		@ideas = Readedbook.select(:user_id).all
	end

	def new

	end

	def create
		@readedbook = Readedbook.new(params[:book])
		@readedbook.save
		redirect_to :mybook_stream => :index
	end

	def idea
		id = params[:id] # retrieve book ID from URI route
		@readedbook = Book.find(id)
	end
	def saveidea
                id = params[:id] # retrieve book ID from URI route
                @readedbook = Book.find(id)	
	end
end
