class MybookStreamController < ApplicationController
	before_filter :set_current_user
	def index
		@tests = User.find(current_user.id).readed_books.all
		@books = Book.select(:book_name).all
		@ideas = Readedbook.select(:user_id).all
	end

	def new

	end

	def create
		@readedbook = Readedbook.new(params[:book])
		@readedbook.save
		redirect_to :mybook_stream => :index
	end

	def saveidea
	
	end
end
