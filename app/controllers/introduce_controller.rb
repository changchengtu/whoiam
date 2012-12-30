class IntroduceController < ApplicationController
	def index
		@users = User.select('name')
	end
end
