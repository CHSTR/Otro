class LaboralController < ApplicationController
  def index
  	if params[:search]
		@oferta_laborals = OfertaLaboral.where("aceptado = 1 AND ( nombre like ? OR empresa like ? OR cargo like ?)","#{params[:search]}%","#{params[:search]}%","#{params[:search]}%")  	
  	else	
  		@oferta_laborals = OfertaLaboral.where("aceptado = 1")
  	end
  end

  def mostrar
  	@oferta_laborals = OfertaLaboral.find(params[:id])
  end
end
