class MybookStreamController < ApplicationController

 	before_filter :set_current_user
	def index
		@books = Book.select(:book_name).all
	end
end
