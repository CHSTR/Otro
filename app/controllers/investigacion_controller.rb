class InvestigacionController < ApplicationController
  #load_and_authorize_resource :class =>  Proyecto  
  load_and_authorize_resource :class =>  AreasDisciplinaria
  skip_authorize_resource :only => [:ADI,:ver_area,:pro,:buscar,:index]
  def index
    @textos = Texto.where("nombre like ?", "investigacion").first
  end
  def editarinicio
    @textos = Texto.where("nombre like ?", "investigacion").first
  end
  
  def updateinicio
    @textos = Texto.where("nombre like ?", "investigacion").first
    if @textos.update_attributes(user_params)
      redirect_to inicio_investigacion_url
    else
      render action: 'editarinicio'
    end
  end
  
  def nuevotexto
    @textos = Texto.new
  end

  def textocreate
    @textos = Texto.new(user_params)
    if @textos.save
      redirect_to inicio_investigacion_url
    else
      render action: 'nuevotexto'
    end
  end

  def eliminartexto
  end

  def nuevopde
  end

  def eliminarpde
  end

  def user_params
    params.require(:texto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end

  def buscar
  	if params[:search]
      @proyectos = Proyecto.where("nombre LIKE ?","%#{params[:search]}%")
    end
  end

  def ADI
  	@areas_disciplinarias = AreasDisciplinaria.all
  end

  def new
  	@areas_disciplinarias = AreasDisciplinaria.new
  end

  def createa
    @areas_disciplinarias = AreasDisciplinaria.new(area_params)
    if @areas_disciplinarias.save
      redirect_to investigacion_adi_path
    else
      render action: 'new'
    end
  end

  def ver_area
  	@areas_disciplinarias = AreasDisciplinaria.find(params[:id])
  end

  def editar
  	@areas_disciplinarias = AreasDisciplinaria.find(params[:id])
  end

  def update
  	@areas_disciplinarias = AreasDisciplinaria.find(params[:id])
  	if @areas_disciplinarias.update_attributes(area_params)
      redirect_to investigacion_adi_url
    else
      render action: 'editar'
    end
  end

  def eliminar
    @areas_disciplinarias = AreasDisciplinaria.find(params[:id])
    @areas_disciplinarias.destroy
    respond_to do |format|
      format.html {redirect_to investigacion_adi_url, notice:'fue eliminado'}
    end  
  end
   #---------------------comienza el area de proyectos-----------------------------

   def pro
   	#@proyectos = Proyecto.find_by_sql("SELECT proyectos.id, proyectos.nombre as nombre_proyecto,proyectos.descripcion, academicos.id as id_academico ,academicos.nombre as nombre_academico FROM proyectos INNER JOIN academicos_proyectos on proyectos.id = academicos_proyectos.proyecto_id INNER JOIN academicos on academicos.id = academicos_proyectos.academico_id WHERE proyectos.id = 1")
    @proyectos = Proyecto.all
    #@academicos_proyectos = ProyectoAcademico.all
    #@proyectos = Proyecto.joins(:academicos, :proyectos_academicos).where("proyectos.id = 1") #solucionar problema!
   end

   def newp
   	@proyectos = Proyecto.new
   end

   def createp
   @proyectos = Proyecto.new(proyecto_params)
   	if @proyectos.save
      redirect_to investigacion_pro_url
    else
      render action: 'newp'
    end
   end

   def eliminarp
    @proyectos = Proyecto.find(params[:id])
    @proyectos.destroy
    respond_to do |format|
      format.html {redirect_to investigacion_pro_url, notice:'fue eliminado'}
    end  
  end

  def editarp
    @proyectos = Proyecto.find(params[:id])
  end

  def updatep
    @proyectos = Proyecto.find(params[:id])
    if @proyectos.update_attributes(proyecto_params)
      redirect_to investigacion_pro_url
    else
      render action: 'editarp'
    end
  end

  #def newr
  #	@academicos_proyectos = AcademicoProyecto.new
  #end

  #def creater
  #	@proyectos_academicos = AcademicoProyecto.new(pa_params)
  #	if @proyectos_academicos.save
  #		redirect_to investigacion_pro_url
  #	else
  #		render anction: 'newr'
  #	end	
  #end

  def proyecto_params
  	params.require(:proyecto).permit(:nombre,:descripcion)
  end

  def area_params
  	params.require(:areas_disciplinaria).permit(:nombre,:descripcion,:descripcion2)
  end
end
