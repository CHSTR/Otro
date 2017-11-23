class ProgramasController < ApplicationController
  def inicio
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
end
