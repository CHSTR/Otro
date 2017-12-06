class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
	  flash[:error] = "Acceso denegado! recuerde que solo tiene privilegios de invitado"
	  redirect_to root_url
  end

  	# Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    #protect_from_forgery with: :exception

    #before_action :configure_permitted_parameters, if: :devise_controller?
#
#    protected
#
 #       def configure_permitted_parameters
  #          devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :rut]) 
   #         devise_parameter_sanitizer.permit(:account_update, keys: [:nombre, :rut]) 
    #    end
end
