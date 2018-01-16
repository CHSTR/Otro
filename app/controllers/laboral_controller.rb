class LaboralController < ApplicationController
  #load_and_authorize_resource :class => OfertaLaboral
  #skip_authorize_resource :only => [:index,:mostrar]
  def index
  	if params[:search]
		@oferta_laborals = OfertaLaboral.where("aceptado = 1 AND oferta_d = 0 AND ( nombre like ? OR empresa like ? OR cargo like ?)","#{params[:search]}%","#{params[:search]}%","#{params[:search]}%").order("id DESC").paginate(page: params[:page], per_page: 10)
    @casillas = Casilla.where("ubicacion = 'laboral'").order("id ASC")
  	else	
  		@oferta_laborals = OfertaLaboral.where("aceptado = 1 AND oferta_d = 0").order("id DESC").paginate(page: params[:page], per_page: 10)
      @casillas = Casilla.where("ubicacion = 'laboral'").order("id ASC")
  	end
  end

  def mostrar
  	@oferta_laborals = OfertaLaboral.find(params[:id])
  end

  def eliminar
    @oferta_laborals = OfertaLaboral.find(params[:id])
    @oferta_laborals.destroy
    respond_to do |format|
      format.html {redirect_to inicio_url, notice:'fue eliminado'}
    end
  end


  def ecasilla
    @casillas = Casilla.find(params[:id])
    if @casillas.activo == 1
      @casillas.activo = 0
    else
      @casillas.activo=1
    end
    @casillas.save
    redirect_to inicio_laboral_url
  end

  def newcasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to inicio_laboral_url
    else
      render action: 'newcasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to inicio_laboral_url, notice:'Casilla Eliminada.'}
    end
  end

  def editarc
    @casillas = Casilla.find(params[:id])
  end

  def updatec
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to inicio_laboral_url
    else
      render action: 'editar'
    end
  end

  def opcion1
    @casillas = Casilla.where("ubicacion = 'laboral'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion1_laboral'")
  end

  def opcion2
    @casillas = Casilla.where("ubicacion = 'laboral'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion2_laboral'")
  end

  def opcion3
    @casillas = Casilla.where("ubicacion = 'laboral'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion3_laboral'")
  end

  def nuevaopcion
    @opciones = Opcion.new
  end

  def nuevaopcion2
    @opciones = Opcion.new
  end

  def nuevaopcion3
    @opciones = Opcion.new
  end

  def createopcion
    @opciones = Opcion.new(opcion_params)
    if @opciones.update_attributes(opcion_params)
      redirect_to inicio_laboral_url
    else
      render action: 'nuevaopcion'
    end
  end

  def eliminaro
    @opciones = Opcion.find(params[:id])
    @opciones.destroy
    respond_to do |format|
      format.html {redirect_to inicio_laboral_url, notice:'Casilla Eliminada.'}
    end
  end

  def editaro
    @opciones = Opcion.find(params[:id])
  end

  def updateo
    @opciones = Opcion.find(params[:id])
    if @opciones.update_attributes(opcion_params)
      redirect_to inicio_laboral_url
    else
      render action: 'editaro'
    end
  end

  def ver1
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'laboral'").order("id ASC")
  end

  def ver2
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'laboral'").order("id ASC")
  end

  def ver3
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'laboral'").order("id ASC")
  end

  def opcion_params
    params.require(:opcion).permit(:opcion, :titulo, :texto, :document, :lugar) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end
  
end
