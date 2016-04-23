class EventsController < ApplicationController
	def map
		@events = Event.all
		@hash = Gmaps4rails.build_markers(@events) do |event, marker|
  		marker.lat event.latitude
  		marker.lng event.longitude
		end
	end

	def new
		@event = Event.new
		@events = Event.all
	end

	def create
		@event = Event.new(event_params)
		@event.organization = current_organization.id
		@event.longitude = -122-(rand(2545..2660)*0.0001)
		@event.latitude = 37+(0.0001*rand(8680..8750))
		if @event.save
			flash[:notice] = "Event created!"
			redirect_to new_event_path
		else
			flash[:error] = @event.errors.full_messages.to_sentence
			redirect_to :back
		end
	end

	def index
		@user = current_student
		@events = @user.events
	end

	private
	def event_params
		params.require(:event).permit(:title, :description, :starttime)
	end
end