class MybookStreamController < ApplicationController

	def index
		@books = Book.select(:book_name).all
		@ideas = Bookidea.select(:book_id).all
	end

	def new

	end

	def create
		@readedbook = Readedbook.new(params[:book])
		@readedbook.save
		redirect_to :mybook_stream => :index
	end
end
