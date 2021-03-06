class ContactodController < ApplicationController
  def index
  	@oferta_laborals = OfertaLaboral.new
    @consultas = Consulta.new
  end

  def crear
  	@oferta_laborals = OfertaLaboral.new(contacto_params)
  	if @oferta_laborals.update_attributes(contacto_params)
      redirect_to contactod_url
    else
      render action: 'index'
    end
  end

  def crear_consulta
    @consultas = Consulta.new(consulta_params)
    if @consultas.update_attributes(consulta_params)
      redirect_to contactod_url
    else
      render action: 'index'
    end
  end

  def contacto_params
    params.require(:oferta_laboral).permit(:nombre,:empresa,:cargo,:correo,:descripcion,:aceptado,:oferta_d,:consulta_d) #retorna un hash con todos los valores del academico...
  end

  def consulta_params
    params.require(:consulta).permit(:nombre,:correo,:descripcion,:leido) #retorna un hash con todos los valores del academico...
  end
end
