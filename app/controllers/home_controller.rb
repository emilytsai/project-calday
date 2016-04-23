class HomeController < ApplicationController
	def index
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
