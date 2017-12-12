class LinkeController < ApplicationController
  #load_and_authorize_resource :class => Intere
  #skip_authorize_resource :only => [:inicio,:mostrar]

  def inicio
    @interes = Intere.where("tipo like ?", "Escuela").order('id DESC').paginate(page: params[:page], per_page: 7)
  end

  def editar
    @interes = Intere.find(params[:id])
  end

  def nuevo
    @interes = Intere.new
    authorize! :nuevo, @interes
  end

  def eliminar
    @interes = Intere.find(params[:id])
    @interes.destroy
    respond_to do |format|
      format.html {redirect_to linke_url, notice:'fue eliminado'}
    end
  end

  def mostrar
    @interes = Intere.find(params[:id])
  end

  def create
    @interes = Intere.new(user_params)
    if @interes.save
      redirect_to linke_url
    else
      render action: 'nuevo'
    end
  end

  def update
    @interes = Intere.find(params[:id])
    if @interes.update_attributes(user_params)
      redirect_to linke_url
    else
      render action: 'editar'
    end
  end

  def user_params
    params.require(:intere).permit(:nombre,:texto,:tipo)
  end
end
