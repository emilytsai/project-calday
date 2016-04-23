class SchedulesController < ApplicationController
	def new
		@schedule = Schedule.new
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

	def create
		for each in params[:event_ids]
			@schedule = Schedule.new(event_id:each)
			@schedule.student_id = current_student.id
			if !@schedule.save
				redirect_to :back
			end
		end
		redirect_to events_path
	end

end
