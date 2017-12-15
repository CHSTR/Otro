class EstudianteController < ApplicationController
  load_and_authorize_resource :class => CentroAlumno
  # load_and_authorize_resource :class => Ability
  skip_authorize_resource :only => [:index,:reglamento]
  def index
    @centro_alumnos = CentroAlumno.order('centro_alumnos.anio DESC').all
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

  def reglamento_params
    params.require(:reglamento).permit(:nombre,:document) #retorna un hash con todos los valores del academico...
  end

  def centro_params
    params.require(:centro_alumno).permit(:anio,:presidente,:vicepresidente,:otros,:pagweb,:imagen,:programa,:photo)
  end
end
