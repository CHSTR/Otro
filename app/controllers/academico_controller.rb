class AcademicoController < ApplicationController
  def index
    if params[:search]
      @academicos = Academico.where("nombre like ? or apellido like ?", "#{params[:search]}%", "#{params[:search]}%").order('apellido ASC')
    else
      @academicos = Academico.where("jornada like ?", "JC").order('apellido ASC') 
    end
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
    @casillas.each do |i|   #Redirecciona bien
      if i.link != "academico"
        i.link="academico/"+i.link 
      end
    end 
  end

  def ver
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)  
  end

  def MJ
    if params[:search]
      @academicos = Academico.where("nombre like ? or apellido like ?", "#{params[:search]}%", "#{params[:search]}%").order('apellido ASC')
    else
    @academicos = Academico.where("id != 1 and jornada like ?", "MJ").order('apellido ASC')
    end
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
      @casillas.each do |i|   #Redirecciona bien
        if i.link == "academico"
          i.link="/"+i.link 
        end
      end 
  end

  def JP
    if params[:search]
      @academicos = Academico.where("nombre like ? or apellido like ?", "#{params[:search]}%", "#{params[:search]}%").order('apellido ASC')
    else
    @academicos = Academico.where("id != 1 and jornada like ?", "JP").order('apellido ASC')
    end
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
      @casillas.each do |i|   #Redirecciona bien
        if i.link == "academico"
          i.link="/"+i.link 
        end
      end
  end

  def mostrar
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
    @academicos = Academico.find(params[:id])
  end

  def editar
    @academicos = Academico.find(params[:id])
  end

  def new
    @academicos = Academico.new
  end
  
  def academicocreate
    @academicos = Academico.new(user_params)
    if @academicos.save
      redirect_to academico_url
    else
      render action: 'new'
    end
  end

  def update
    @academicos = Academico.find(params[:id])
    if @academicos.update_attributes(user_params)
      redirect_to academico_url
    else
      render action: 'editar'
    end
  end

  def eliminar
    @academicos = Academico.find(params[:id])
    @academicos.destroy
    respond_to do |format|
      format.html {redirect_to academico_url, notice:'fue eliminado'}
    end  
  end
  #------------------------------------------------------------------------
  #comienzan los controladores de casilla
  #------------------------------------------------------------------------
 

  def ecasilla
    @casillas = Casilla.find(params[:id])
    if @casillas.activo == 1
        @casillas.activo = 0
    else
        @casillas.activo=1
    end 
    @casillas.save
    redirect_to academico_url
  end



  def newcasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to academico_url
    else
      render action: 'newcasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to academico_url, notice:'fue eliminado'}
    end  
  end

  def editarc
    @casillas = Casilla.find(params[:id])
  end

  def updatec
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to academico_url
    else
      render action: 'editarc'
    end
  end

  def opcion1
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
    @opciones = Opcion.where("lugar = 'academico_opcion1'")
  end

  def opcion2
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
    @opciones = Opcion.where("lugar = 'academico_opcion2'")
  end

  def opcion3
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
    @opciones = Opcion.where("lugar = 'academico_opcion3'")
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
      redirect_to academico_url
    else
      render action: 'nuevaopcion'
    end
  end

  def eliminaro
    @opciones = Opcion.find(params[:id])
    @opciones.destroy
    respond_to do |format|
      format.html {redirect_to academico_url, notice:'Casilla Eliminada.'}
    end  
  end

  def editaro
    @opciones = Opcion.find(params[:id])
  end

  def updateo
    @opciones = Opcion.find(params[:id])
    if @opciones.update_attributes(opcion_params)
      redirect_to academico_url
    else
      render action: 'editaro'
    end
  end

  def ver1
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
  end

  def ver2
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
  end

  def ver3
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
  end

  def opcion_params
    params.require(:opcion).permit(:opcion, :titulo, :texto, :document, :lugar) #retorna un hash con todos los valores del academico...
  end

  def user_params
    params.require(:academico).permit(:nombre,:apellido,:titulo_profesional,:grado,:area_interes,:correo,:jornada,:imagen,:link1,:link2,:link3,:descripcion,:photo, :document) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

  def set_academico
    @academico = Academico.fin(params[:id])
  end
end
