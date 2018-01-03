class EgresadosController < ApplicationController
  def index
    @etextos = Etexto.where("nombre like ?", "egresado").first
  end

  def editarinicio
    @etextos = Etexto.where("nombre like ?", "egresado").first
  end

  def updateinicio
    @etextos = Etexto.where("nombre like ?", "egresado").first
    if @etextos.update_attributes(user_paramsi)
      redirect_to inicio_egresados_url
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
      redirect_to inicio_egresados_url
    else
      render action: 'nuevoinicio'
    end
  end
  def user_paramsi
    params.require(:etexto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end

  def tituygradua
  	@egresados = Egresado.find_by_sql("select anio from egresados group by anio order by anio DESC")
    @programas = Programa.where("tipo like ?", "pregrado")
    @programas2 = Programa.where("tipo like ?", "postgrado")
    # hacer una consulta con find_by_sql, para filtrar solo las carreras que tengan egresados.
  end

  def egredesta
  	@egresados = Egresado.where("destacado like ? ", "1").order("anio DESC")
  end

  def leer2(a,b)
    @egresados3 = Egresado.find_by_sql("select distinct (egresados.id), egresados.* from egresados, programas where egresados.anio = #{a} and egresados.programa = '#{b}'")
    if @egresados3.empty?
      return 0
    end
  end
  helper_method :leer2

  def leer
  	v =[]
  	v = params[:id]
  	@egresados = Egresado.find_by_sql("select distinct (egresados.id), egresados.* from egresados, programas where egresados.anio = #{v.to(3)} and egresados.programa = '#{v[-1]}'")
    if @egresados.empty?
      redirect_to tituygradua_egresados_url
    end
  end

  def nuevo
  	@egresados = Egresado.new
  	#@programas = Programa(:all)
  end

  def crear
  	@egresados = Egresado.new(egresado_params)
  	if @egresados.save
      redirect_to tituygradua_egresados_url
    else
      render action: 'nuevo'
    end
  end

  def egresado_params
    params.require(:egresado).permit(:nombre,:programa,:contacto_empresa,:correo,:anio,:destacado) #retorna un hash con todos los valores del academico...
  end

  def todos
  	@egresados = Egresado.all
    @programas = Programa.all
  end

  def editar
  	@egresados = Egresado.find(params[:id])
  end

  def update
  	@egresados = Egresado.find(params[:id])
    if @egresados.update_attributes(egresado_params)
      redirect_to todos_egresados_url
    else
      render action: 'editar'
    end
  end

  def eliminar
  	@egresados = Egresado.find(params[:id])
    @egresados.destroy
    respond_to do |format|
      format.html {redirect_to todos_egresados_url, notice:'fue eliminado'}
    end 
  end

end
