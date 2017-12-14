class RegistrationsController < Devise::RegistrationsController
	before_action :authenticate_user!, :redirect_unless_admin, only: [:new,:create]
  skip_before_action :require_no_authentication
  
   private
 
  def redirect_unless_admin
  	unless current_user.try(:admin?)
  		flash[:error] = "Solo el admin puede hacer esto."
  		redirect_to root_path
  	else
  		flash[:error] = "Solo el admin puede hacer esto."
  	end
  end

  def sign_up_params
    params.require(:user).permit(:nombre,:email, :role_id, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:nombre,:email, :role_id, :password, :password_confirmation,:current_password)
  end

end
