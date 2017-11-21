class InvestigacionController < ApplicationController
  def index
  end

  def buscar
  	if params[:search]
      @proyectos = Proyecto.where("descripcion like ?", "#{params[:search]}%")
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

  def ver
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
   	@proyectos = Proyecto.all
   	@proyectos_academicos = Academico.joins(:academicos_proyectos,:proyectos).where("proyectos.id = 1") #solucionar problema!
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
