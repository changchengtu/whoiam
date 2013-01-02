class MybookStreamController < ApplicationController
	def index
		@books = Book.select(:book_name).all
	end
end
