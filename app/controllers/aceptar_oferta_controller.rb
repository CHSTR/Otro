class AceptarOfertaController < ApplicationController
  def index
  	@oferta_laborals = OfertaLaboral.where("aceptado = 0")
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
end
