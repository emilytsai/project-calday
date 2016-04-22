class OrganizationsController < ApplicationController
	before_action :authenticate_organization!
	
	def index
	end
end
