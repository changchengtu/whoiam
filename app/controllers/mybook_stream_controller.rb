class MybookStreamController < ApplicationController
	
	def index
		@readedbooks = User.find(current_user.id).readed_books.all
	end

	def new

	end

	def create
		@readedbook = Readedbook.new(params[:book])
		@readedbook.save
		redirect_to :mybook_stream => :index
	end

	def show
		@id = params[:id] # retrieve book ID from URI route
	end
	def saveidea

                @bookidea = Bookidea.new(params[:idea])
		@bookidea.save
		redirect_to :mybook_stream => :index
	end
end
