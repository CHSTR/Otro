class EgresadosController < ApplicationController
  def index
    @etextos = Etexto.where("nombre like ?", "egresado").first
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
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
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")

    # hacer una consulta con find_by_sql, para filtrar solo las carreras que tengan egresados.
  end

  def egredesta
  	@egresados = Egresado.where("destacado like ? ", "1").order("anio DESC")
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
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
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
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
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
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



  def ecasilla
    @casillas = Casilla.find(params[:id])
    if @casillas.activo == 1
      @casillas.activo = 0
    else
      @casillas.activo=1
    end
    @casillas.save
    redirect_to inicio_egresados_url
  end

  def newcasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to inicio_egresados_url
    else
      render action: 'newcasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to inicio_egresados_url, notice:'Casilla Eliminada.'}
    end
  end

  def editarc
    @casillas = Casilla.find(params[:id])
  end

  def updatec
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to inicio_egresados_url
    else
      render action: 'editar'
    end
  end

  def opcion1
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion1_egresados'")
  end

  def opcion2
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion2_egresados'")
  end

  def opcion3
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion3_egresados'")
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
      redirect_to inicio_egresados_url
    else
      render action: 'nuevaopcion'
    end
  end

  def eliminaro
    @opciones = Opcion.find(params[:id])
    @opciones.destroy
    respond_to do |format|
      format.html {redirect_to inicio_egresados_url, notice:'Casilla Eliminada.'}
    end
  end

  def editaro
    @opciones = Opcion.find(params[:id])
  end

  def updateo
    @opciones = Opcion.find(params[:id])
    if @opciones.update_attributes(opcion_params)
      redirect_to inicio_egresados_url
    else
      render action: 'editaro'
    end
  end

  def ver1
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
  end

  def ver2
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
  end

  def ver3
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'egresados'").order("id ASC")
  end

  def opcion_params
    params.require(:opcion).permit(:opcion, :titulo, :texto, :document, :lugar) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

end
