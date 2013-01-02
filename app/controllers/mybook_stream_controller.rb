class MybookStreamController < ApplicationController

 	before_filter :set_current_user
	def index
		@books = Book.select(:book_name).all
		@ideas = Bookidea.select(:book_id).all
	end

	def new

	end

	def create
		@readedbook = Readedbook.new(:book_id=>params[:book_id].to_i, :user_id=> current_user.id)
		@readedbook.save
		redirect_to :mybook_stream => :index
	end
end
