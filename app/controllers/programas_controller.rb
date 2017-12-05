class ProgramasController < ApplicationController
  load_and_authorize_resource :class => Programa
  skip_authorize_resource :only => [:inicio,:mostrar,:pregrado,:postgrado,:otros]
  def inicio
    @etextos = Etexto.where("id != 1 and nombre like ?", "programa").first
  end

  def mostrar
    @programas = Programa.find(params[:id])
  end

  def editar
    @programas = Programa.find(params[:id])
  end

  def updatep
    @programas = Programa.find(params[:id])
    if @programas.update_attributes(user_params)
      redirect_to programas_pregrado_url
    else
      render action: 'editar'
    end
  end

  def eliminar
    @programas = Programa.find(params[:id])
    @programas.destroy
    respond_to do |format|
      format.html {redirect_to programas_pregrado_url, notice:'fue eliminado'}
    end
  end

  def nuevo
    @programas = Programa.new
  end

  def create
    @programas = Programa.new(user_params)
    if @programas.save
      redirect_to programas_pregrado_url
    else
      render action: 'nuevo'
    end
  end

  def buscar
  end

  def pregrado
    @programas = Programa.where("tipo like ?", "pregrado")
  end

  def postgrado
    @programas = Programa.where("tipo like ?", "postgrado")
  end

  def otros
    @programas = Programa.where("tipo like ?", "otros")
  end

  def user_params
    params.require(:programa).permit(:nombre,:perfil_egreso,:campo_ocupacional,:link,:descripcion,:link_malla,:tipo)
  end

  def editarinicio
    @etextos = Etexto.where("id != 1 and nombre like ?", "programa").first
  end

  def updateinicio
    @etextos = Etexto.where("id != 1 and nombre like ?", "programa").first
    if @etextos.update_attributes(user_paramsi)
      redirect_to programas_url
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
      redirect_to programas_url
    else
      render action: 'nuevoinicio'
    end
  end
  def user_paramsi
    params.require(:etexto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end
end
