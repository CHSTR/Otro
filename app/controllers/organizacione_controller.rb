class OrganizacioneController < ApplicationController
  def index
  	@funcionario_escuelas = FuncionarioEscuela.order("nombre ASC").all
    @casillas = Casilla.where("ubicacion = 'organizacione'").order("id ASC")
  end

  def eliminare
  	@funcionario_escuelas = FuncionarioEscuela.find(params[:id])
    @funcionario_escuelas.destroy
    respond_to do |format|
      format.html {redirect_to organizacione_url, notice:'fue eliminado'}
    end 
  end

  def editar
  	@funcionario_escuelas = FuncionarioEscuela.find(params[:id])
  end

  def update
  	@funcionario_escuelas = FuncionarioEscuela.find(params[:id])
    if @funcionario_escuelas.update_attributes(escuela_params)
      redirect_to organizacione_url
    else
      render action: 'editar'
    end
  end

  def new
  	@funcionario_escuelas = FuncionarioEscuela.new
  end

  def crear
  	@funcionario_escuelas = FuncionarioEscuela.new(escuela_params)
    if @funcionario_escuelas.save
      redirect_to organizacione_url
    else
      render action: 'new'
    end
  end

  #---------------------------------------------------

  def organigrama
    @casillas = Casilla.where("ubicacion = 'organizacione'").order("id ASC")
    @etextos = Etexto.where("nombre like ?", "organigrama").first
  end

  def editarorganigrama
    @etextos = Etexto.where("nombre like ?", "organigrama").first
  end

  def updateorganigrama
    @etextos = Etexto.where("nombre like ?", "organigrama").first
    if @etextos.update_attributes(user_paramso)
      redirect_to organizacione_organigrama_url
    else
      render action: 'editarorganigrama'
    end
  end

  def nuevoorganigrama
    @etextos = Etexto.new
  end

  def createorganigrama
    @etextos = Etexto.new(user_paramso)
    if @etextos.save
      redirect_to organizacione_organigrama_url
    else
      render action: 'nuevoorganigrama'
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
    redirect_to organizacione_url
  end
  
  def newcasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to organizacione_url
    else
      render action: 'newcasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to organizacione_url, notice:'Casilla Eliminada.'}
    end  
  end

  def editarc
    @casillas = Casilla.find(params[:id])
  end

  def updatec
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to organizacione_url
    else
      render action: 'editar'
    end
  end

  def opcion1
    @casillas = Casilla.where("ubicacion = 'organizacione'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion1_organizacione'")
  end

  def opcion2
    @casillas = Casilla.where("ubicacion = 'organizacione'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion2_organizacione'")
  end

  def opcion3
    @casillas = Casilla.where("ubicacion = 'organizacione'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion3_organizacione'")
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
      redirect_to organizacione_url
    else
      render action: 'nuevaopcion'
    end
  end

  def eliminaro
    @opciones = Opcion.find(params[:id])
    @opciones.destroy
    respond_to do |format|
      format.html {redirect_to organizacione_url, notice:'Casilla Eliminada.'}
    end  
  end

  def editaro
    @opciones = Opcion.find(params[:id])
  end

  def updateo
    @opciones = Opcion.find(params[:id])
    if @opciones.update_attributes(opcion_params)
      redirect_to organizacione_url
    else
      render action: 'editaro'
    end
  end

  def ver1
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'organizacione'").order("id ASC")
  end

  def ver2
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'organizacione'").order("id ASC")
  end

  def ver3
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'organizacione'").order("id ASC")
  end

  def opcion_params
    params.require(:opcion).permit(:opcion, :titulo, :texto, :document, :lugar) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

  def user_paramso
    params.require(:etexto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end

  def escuela_params
    params.require(:funcionario_escuela).permit(:nombre,:cargo,:correo,:imagen,:funcion,:photo)
  end

end
