class ContactodController < ApplicationController
  def index
  	@mensaje_deptos = MensajeDepto.new
  end

  def crear
  	@mensaje_deptos = MensajeDepto.new(contacto_params)
  	if @mensaje_deptos.update_attributes(contacto_params)
      redirect_to contacto_url
    else
      render action: 'index'
    end

  end

  def contacto_params
    params.require(:mensaje_depto).permit(:nombre,:empresa,:cargo,:correo,:descripcion) #retorna un hash con todos los valores del academico...
  end
end
