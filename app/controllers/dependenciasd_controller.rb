class DependenciasdController < ApplicationController
  def inicio
    @oficinas = Oficina.where("tipo like ?", "Departamento").order('id DESC').paginate(page: params[:page], per_page: 10)
  end

  def nuevo
    @oficinas = Oficina.new
    authorize! :nuevo, @oficinas
  end

  def editar
    @oficinas = Oficina.find(params[:id])
  end

  def mostrar
    @oficinas = Oficina.find(params[:id])
  end

  def eliminar
    @oficinas = Oficina.find(params[:id])
    @oficinas.destroy
    respond_to do |format|
      format.html {redirect_to dependenciasd_url, notice:'fue eliminado'}
    end
  end

  def create
    @oficinas = Oficina.new(user_params)
    if @oficinas.save
      redirect_to dependenciasd_url
    else
      render action: 'nuevo'
    end
  end

  def update
    @oficinas = Oficina.find(params[:id])
    if @oficinas.update_attributes(user_params)
      redirect_to dependenciasd_url
    else
      render action: 'editar'
    end
  end

  def user_params
    params.require(:oficina).permit(:nombre,:texto,:tipo)
  end
end
