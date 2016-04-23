class LeadersController < ApplicationController
	def index
		@leaders = Leader.all
	end

	def about
	end
end
