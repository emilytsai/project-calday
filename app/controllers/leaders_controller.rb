class LeadersController < ApplicationController
	before_action :authenticate_leader!
	
end
