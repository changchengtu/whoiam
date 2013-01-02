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
end
