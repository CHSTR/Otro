class LaboralController < ApplicationController
  def index
  	@oferta_laborals = OfertaLaboral.where("aceptado = 1")
  end

  def mostrar
  	@oferta_laborals = OfertaLaboral.find(params[:id])
  end
end
