class OrganizationsController < ApplicationController
	before_action :authenticate_organization!
	
	def edit

	end


	def create
		@organization = current_organization
		if @organization.save
			flash[:notice] = "Organization created!"
			redirect_to trainer_path(current_trainer.id)
		else
			flash[:error] = @organization.errors.full_messages.to_sentence
			render 'edit_organization'
		end
	end

	private
	def organization_params
		params.require(:organization).permit(:name, :email, :password, :type, :description)
	end

end
