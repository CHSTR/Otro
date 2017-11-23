class ContactodController < ApplicationController
  def index
  	@oferta_laborals = OfertaLaboral.new
  end

  def crear
  	@oferta_laborals = OfertaLaboral.new(contacto_params)
  	if @oferta_laborals.update_attributes(contacto_params)
      redirect_to contacto_url
    else
      render action: 'index'
    end

  end

  def contacto_params
    params.require(:oferta_laboral).permit(:nombre,:empresa,:cargo,:correo,:descripcion,:aceptado) #retorna un hash con todos los valores del academico...
  end
end
