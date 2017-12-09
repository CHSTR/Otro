class ConsultaController < ApplicationController
  def index
  	@consultas = OfertaLaboral.where("aceptado = 0 and oferta_d = 1")
  end

  def editar
  end

  def crear
  	@consultas = Consulta.new
  end

  def crearconsu
  	@cambio = OfertaLaboral.find(params[:id])
  	@cambio.aceptado = 1
  	@cambio.save
    @consultas = Consulta.new(user_params)
    if @consultas.save
      redirect_to consulta_index_url
    else
      render action: 'index'
    end
  end

  def ver
  	@consultas = OfertaLaboral.find(params[:id])
  	@consultas1 = Consulta.new
  end

  def user_params
    params.require(:consulta).permit(:nombre,:correo,:descripcion,:leido) #retorna un hash con todos los valores del academico...
  end

end
