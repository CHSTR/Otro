class ContactoController < ApplicationController
  def index
  	@oferta_laborals = OfertaLaboral.new
  end

  def crear
  	@oferta_laborals = OfertaLaboral.new(contactoe_params)
  	if @oferta_laborals.update_attributes(contactoe_params)
      redirect_to contactoe_url
    else
      render action: 'index'
    end

  end

  def contactoe_params
    params.require(:oferta_laboral).permit(:nombre,:empresa,:cargo,:correo,:descripcion,:aceptado) #retorna un hash con todos los valores del academico...
  end

end
