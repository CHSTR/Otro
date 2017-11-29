class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
	  flash[:error] = "Acceso denegado! recuerde que solo tiene privilegios de invitado"
	  redirect_to root_url
  end
end
