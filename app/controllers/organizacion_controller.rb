class OrganizacionController < ApplicationController
  def index
    @funcionario_deptos = FuncionarioDepto.all
    @casillas = Casilla.where("ubicacion = 'organizacion'").order("id ASC")
  end

  def new
    @funcionario_deptos = FuncionarioDepto.new
  end

  def crear
    @funcionario_deptos = FuncionarioDepto.new(funcionario_params)
    if @funcionario_deptos.save
      redirect_to organizacion_url
    else
      render action: 'new'
    end
  end

  def organigrama
      @textos = Texto.where("nombre like ?", "organigrama").first
      @casillas = Casilla.where("ubicacion = 'organizacion'").order("id ASC")
  end
  
    def editarorganigrama
      @textos = Texto.where("nombre like ?", "organigrama").first
    end
  
    def updateorganigrama
      @textos = Texto.where("nombre like ?", "organigrama").first
      if @textos.update_attributes(user_paramso)
        redirect_to organizacion_organigrama_url
      else
        render action: 'editarorganigrama'
      end
    end
  
    def nuevoorganigrama
      @textos = Texto.new
    end
  
    def createorganigrama
      @textos = Texto.new(user_paramso)
      if @textos.save
        redirect_to organizacion_organigrama_url
      else
        render action: 'nuevoorganigrama'
      end
    end
  
    def user_paramso
      params.require(:texto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
    end

  def delete
  end

  def update
    @funcionario_deptos = FuncionarioDepto.find(params[:id])
    if @funcionario_deptos.update_attributes(funcionario_params)
      redirect_to organizacion_url
    else
      render action: 'editar'
    end
  end

  def editar
    @funcionario_deptos = FuncionarioDepto.find(params[:id])
  end

  def eliminar
    @funcionario_deptos = FuncionarioDepto.find(params[:id])
    @funcionario_deptos.destroy
    respond_to do |format|
      format.html {redirect_to organizacion_url, notice:'fue eliminado'}
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
    redirect_to organizacion_url
  end
  
  def newcasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to organizacion_url
    else
      render action: 'newcasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to organizacion_url, notice:'Casilla Eliminada.'}
    end  
  end

  def editarc
    @casillas = Casilla.find(params[:id])
  end

  def updatec
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to organizacion_url
    else
      render action: 'editar'
    end
  end

  def opcion1
    @casillas = Casilla.where("ubicacion = 'organizacion'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion1_organizacion'")
  end

  def opcion2
    @casillas = Casilla.where("ubicacion = 'organizacion'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion2_organizacion'")
  end

  def opcion3
    @casillas = Casilla.where("ubicacion = 'organizacion'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion3_organizacion'")
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
      redirect_to organizacion_url
    else
      render action: 'nuevaopcion'
    end
  end

  def eliminaro
    @opciones = Opcion.find(params[:id])
    @opciones.destroy
    respond_to do |format|
      format.html {redirect_to organizacion_url, notice:'Casilla Eliminada.'}
    end  
  end

  def editaro
    @opciones = Opcion.find(params[:id])
  end

  def updateo
    @opciones = Opcion.find(params[:id])
    if @opciones.update_attributes(opcion_params)
      redirect_to organizacion_url
    else
      render action: 'editaro'
    end
  end

  def ver1
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'organizacion'").order("id ASC")
  end

  def ver2
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'organizacion'").order("id ASC")
  end

  def ver3
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'organizacion'").order("id ASC")
  end

  def opcion_params
    params.require(:opcion).permit(:opcion, :titulo, :texto, :document, :lugar) #retorna un hash con todos los valores del academico...
  end

  def funcionario_params
    params.require(:funcionario_depto).permit(:nombre,:cargo,:correo,:imagen,:funcion,:photo)
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

  def user_paramso
      params.require(:texto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end
end
