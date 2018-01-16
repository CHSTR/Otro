class ProgramasController < ApplicationController
  #load_and_authorize_resource :class => Programa
  skip_authorize_resource :only => [:inicio,:mostrar,:pregrado,:postgrado,:otros]
  def inicio
    @etextos = Etexto.where("nombre like ?", "programa").first
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")
  end

  def mostrar
    @programas = Programa.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")
  end

  def editar
    @programas = Programa.find(params[:id])
  end

  def updatep
    @programas = Programa.find(params[:id])
    if @programas.update_attributes(user_params)
      redirect_to programas_pregrado_url
    else
      render action: 'editar'
    end
  end

  def eliminar
    @programas = Programa.find(params[:id])
    @programas.destroy
    respond_to do |format|
      format.html {redirect_to programas_pregrado_url, notice:'fue eliminado'}
    end
  end

  def nuevo
    @programas = Programa.new
  end

  def create
    @programas = Programa.new(user_params)
    if @programas.save
      redirect_to programas_pregrado_url
    else
      render action: 'nuevo'
    end
  end

  def buscar
  end

  def pregrado
    @programas = Programa.where("tipo like ?", "pregrado")
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")

  end

  def postgrado
    @programas = Programa.where("tipo like ?", "postgrado")
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")

  end

  def otros
    @programas = Programa.where("tipo like ?", "otros")
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")
  end

  def user_params
    params.require(:programa).permit(:nombre,:perfil_egreso,:campo_ocupacional,:link,:descripcion,:link_malla,:tipo, :document, :document2, :document3)
  end

  def editarinicio
    @etextos = Etexto.where("nombre like ?", "programa").first
  end

  def updateinicio
    @etextos = Etexto.where("nombre like ?", "programa").first
    if @etextos.update_attributes(user_paramsi)
      redirect_to programas_url
    else
      render action: 'editarinicio'
    end
  end

  def nuevoinicio
    @etextos = Etexto.new
  end

  def createinicio
    @etextos = Etexto.new(user_paramsi)
    if @etextos.save
      redirect_to programas_url
    else
      render action: 'nuevoinicio'
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
    redirect_to programas_url
  end

  def newcasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to programas_url
    else
      render action: 'newcasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to programas_url, notice:'Casilla Eliminada.'}
    end
  end

  def editarc
    @casillas = Casilla.find(params[:id])
  end

  def updatec
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to programas_url
    else
      render action: 'editar'
    end
  end

  def opcion1
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion1_programa'")
  end

  def opcion2
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion2_programa'")
  end

  def opcion3
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion3_programa'")
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
      redirect_to programas_url
    else
      render action: 'nuevaopcion'
    end
  end

  def eliminaro
    @opciones = Opcion.find(params[:id])
    @opciones.destroy
    respond_to do |format|
      format.html {redirect_to programas_url, notice:'Casilla Eliminada.'}
    end
  end

  def editaro
    @opciones = Opcion.find(params[:id])
  end

  def updateo
    @opciones = Opcion.find(params[:id])
    if @opciones.update_attributes(opcion_params)
      redirect_to programas_url
    else
      render action: 'editaro'
    end
  end

  def ver1
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")
  end

  def ver2
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")
  end

  def ver3
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'programa'").order("id ASC")
  end

  def opcion_params
    params.require(:opcion).permit(:opcion, :titulo, :texto, :document, :lugar) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

  def user_paramsi
    params.require(:etexto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end
end
