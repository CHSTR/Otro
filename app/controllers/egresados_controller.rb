class EgresadosController < ApplicationController
  def index

  end

  def tituygradua
  	@egresados = Egresado.find_by_sql("select anio from egresados group by anio order by anio DESC")
  	@programas = Programa.where("tipo like ?", "pregrado")
  end

  def egredesta
  	@egresados = Egresado.where("destacado like ? ", "1")
  end

  def leer
  	v =[]
  	v = params[:id]
  	@egresados = Egresado.find_by_sql("select distinct (egresados.id), egresados.* from egresados, programas where egresados.anio = #{v.to(3)} and egresados.programa = '#{v[-1]}'")
  end

  def nuevo
  	@egresados = Egresado.new
  end

  def crear
  	@egresados = Egresado.new(egresado_params)
  	if @egresados.save
      redirect_to inicio_egresados_url
    else
      render action: 'nuevo'
    end
  end

  def egresado_params
    params.require(:egresado).permit(:nombre,:programa,:contacto_empresa,:correo,:anio,:destacado) #retorna un hash con todos los valores del academico...
  end

  def todos
  	@egresados = Egresado.all
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
