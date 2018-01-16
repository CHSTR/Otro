class EstudianteController < ApplicationController
  #load_and_authorize_resource :class => CentroAlumno
  # load_and_authorize_resource :class => Ability
  #skip_authorize_resource :only => [:index,:reglamento]
  def index
    @centro_alumnos = CentroAlumno.order('centro_alumnos.anio DESC').all
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
  end

  def crear
    @centro_alumnos = CentroAlumno.new
  end

  def crearcentro
    @centro_alumnos = CentroAlumno.new
    if @centro_alumnos.update_attributes(centro_params)
      redirect_to centro_url
    else
      render action: 'crear'
    end
  end

  def editar
    @centro_alumnos = CentroAlumno.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
  end

  def update
    @centro_alumnos = CentroAlumno.find(params[:id])
    if @centro_alumnos.update_attributes(centro_params)
      redirect_to centro_url
    else
      render action: 'editar'
    end
  end

  def eliminar
    @centro_alumnos = CentroAlumno.find(params[:id])
    @centro_alumnos.destroy
    respond_to do |format|
      format.html {redirect_to centro_url, notice:'fue eliminado'}
    end  
  end

  def reglamento
    @reglamentos = Reglamento.all
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
  end

  def crearregla
    @reglamentos = Reglamento.new
  end

  def crearreglamento
    @reglamentos = Reglamento.new(reglamento_params)
    if @reglamentos.update_attributes(reglamento_params)
      redirect_to reglamento_url
    else
      render action: 'crearregla'
    end
  end

  def editarregla
    @reglamentos = Reglamento.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
  end

  def updateregla
    @reglamentos = Reglamento.find(params[:id])
    if @reglamentos.update_attributes(reglamento_params)
      redirect_to reglamento_url
    else
      render action: 'editarregla'
    end
  end

  def eliminarregla
    @reglamentos = Reglamento.find(params[:id])
    @reglamentos.destroy
    respond_to do |format|
      format.html {redirect_to reglamento_url, notice:'fue eliminado'}
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
    redirect_to centro_url
  end

  def newcasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to centro_url
    else
      render action: 'newcasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to centro_url, notice:'Casilla Eliminada.'}
    end
  end

  def editarc
    @casillas = Casilla.find(params[:id])
  end

  def updatec
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to centro_url
    else
      render action: 'editar'
    end
  end

  def opcion1
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion1_estudiante'")
  end

  def opcion2
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion2_estudiante'")
  end

  def opcion3
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion3_estudiante'")
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
      redirect_to centro_url
    else
      render action: 'nuevaopcion'
    end
  end

  def eliminaro
    @opciones = Opcion.find(params[:id])
    @opciones.destroy
    respond_to do |format|
      format.html {redirect_to centro_url, notice:'Casilla Eliminada.'}
    end
  end

  def editaro
    @opciones = Opcion.find(params[:id])
  end

  def updateo
    @opciones = Opcion.find(params[:id])
    if @opciones.update_attributes(opcion_params)
      redirect_to centro_url
    else
      render action: 'editaro'
    end
  end

  def ver1
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
  end

  def ver2
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
  end

  def ver3
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'estudiante'").order("id ASC")
  end

  def opcion_params
    params.require(:opcion).permit(:opcion, :titulo, :texto, :document, :lugar) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

  def reglamento_params
    params.require(:reglamento).permit(:nombre,:document) #retorna un hash con todos los valores del academico...
  end

  def centro_params
    params.require(:centro_alumno).permit(:anio,:presidente,:vicepresidente,:otros,:pagweb,:imagen,:programa,:photo)
  end
end
