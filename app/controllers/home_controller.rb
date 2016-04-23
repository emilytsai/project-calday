class HomeController < ApplicationController
	def index
		if current_student
			redirect_to new_schedule_path
		else
			@events = Event.all
			@firstlat = []
			@firstlong = []
			@title = []
			for e in Event.all
				@firstlat = @firstlat + [e.latitude]
				@firstlong = @firstlong + [e.longitude]
				@title = @title + [e.title]
			end
			gon.firstlat = @firstlat
			gon.firstlong = @firstlong
			gon.title = @title
		end
	end
end
