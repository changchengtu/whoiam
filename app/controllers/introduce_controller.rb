class IntroduceController < ApplicationController
	def index
		@users = User.select("id, name")
	end
end
