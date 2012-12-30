class IntroduceController < ApplicationController
	def index
		@users = User.all
	end
end
