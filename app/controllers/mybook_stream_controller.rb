class MybookStreamController < ApplicationController

 	before_filter :set_current_user
	def index
		@books = Book.select(:book_name).all
		@ideas = Bookidea.all
	end

	def new

	end

	def create
		redirect_to :mybook_stream => :index
	end
end
