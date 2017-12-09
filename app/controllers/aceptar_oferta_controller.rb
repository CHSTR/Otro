class AceptarOfertaController < ApplicationController
  load_and_authorize_resource :class => OfertaLaboral
  def index
  	@oferta_laborals = OfertaLaboral.where("oferta_d = 0 and aceptado = 0")
  end

  def eliminar
  	@oferta_laborals = OfertaLaboral.find(params[:id])
  	@oferta_laborals.destroy
    respond_to do |format|
      format.html {redirect_to inicio_url, notice:'fue eliminado'}
    end
  end

  def cambiar
    @oferta_laborals = OfertaLaboral.find(params[:id])
    if @oferta_laborals.aceptado == 0
        @oferta_laborals.aceptado = 1
    end 
    @oferta_laborals.save
    redirect_to inicio_url
  end

  def mostrar
  	@oferta_laborals = OfertaLaboral.find(params[:id])
  end

  def editar
    @oferta_laborals = OfertaLaboral.find(params[:id])
  end

  def update
    @oferta_laborals = OfertaLaboral.find(params[:id])
    if @oferta_laborals.update_attributes(oferta_params)
      redirect_to inicio_url
    else
      render action: 'editar'
    end
  end

  def oferta_params
    params.require(:oferta_laboral).permit(:empresa,:cargo,:descripcion) #retorna un hash con todos los valores del academico...
  end

end
