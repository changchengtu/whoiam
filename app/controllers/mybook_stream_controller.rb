class MybookStreamController < ApplicationController

	def index
		@books = Book.all
	end
end
