class OrgRegistrationsController < Devise::RegistrationsController
	private
  def sign_up_params
    params.require(:organization).permit(:name, :email, :category, :description, :password, :password_confirmation)
  end

  def account_update_params
		params.require(:organization).permit(:name, :email, :category, :description, :password, :password_confirmation, :current_password)
  end
end
