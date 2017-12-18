class LaboralController < ApplicationController
  #load_and_authorize_resource :class => OfertaLaboral
  #skip_authorize_resource :only => [:index,:mostrar]
  def index
  	if params[:search]
		@oferta_laborals = OfertaLaboral.where("aceptado = 1 AND oferta_d = 0 AND ( nombre like ? OR empresa like ? OR cargo like ?)","#{params[:search]}%","#{params[:search]}%","#{params[:search]}%").order("id DESC").paginate(page: params[:page], per_page: 10)  	
  	else	
  		@oferta_laborals = OfertaLaboral.where("aceptado = 1 AND oferta_d = 0").order("id DESC").paginate(page: params[:page], per_page: 10)
  	end
  end

  def mostrar
  	@oferta_laborals = OfertaLaboral.find(params[:id])
  end
end
