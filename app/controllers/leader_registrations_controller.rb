class LeaderRegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:leader).permit(:name, :email, :year, :major, :SID, :password, :password_confirmation)
  end

  def account_update_params
	params.require(:leader).permit(:name, :email, :year, :major, :SID, :password, :password_confirmation, :current_password)
  end
end
