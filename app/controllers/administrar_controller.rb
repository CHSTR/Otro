class AdministrarController < ApplicationController
  def index
  	@users = User.all.paginate(page: params[:page], per_page: 5)
  end

  def editar
  	@users = User.find(params[:id])
  end

  def update

  end

  def eliminar
  	@users = User.find(params[:id])
    @users.destroy
    respond_to do |format|
      format.html {redirect_to administrar_inicio_url, notice:'fue eliminado'}
    end 
  end
end
