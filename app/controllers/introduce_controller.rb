class IntroduceController < ApplicationController
	def index
		@users = User.select(:name).all
	end
end
