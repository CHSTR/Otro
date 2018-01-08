class ImagenesController < ApplicationController
  def inicio
    if params[:search]
      @imagenes = Imagene.where("nombre like ?", "#{params[:search]}%").order('id DESC').paginate(page: params[:page], per_page: 7)
    else
      @imagenes = Imagene.all.order('id DESC').paginate(page: params[:page], per_page: 7)
    end
  end

  def nuevo
    @imagenes = Imagene.new
  end

  def editar
    @imagenes = Imagene.find(params[:id])
  end

  def mostrar
    @imagenes = Imagene.find(params[:id])
  end

  def eliminar
    @imagenes = Imagene.find(params[:id])
    @imagenes.destroy
    respond_to do |format|
      format.html {redirect_to imagenes_url, notice:'fue eliminado'}
    end
  end

  def buscar
    if params[:search]
      @imagenes = Imagene.where("descripcion like ?", "#{params[:search]}%")
    end
  end

  def create
    @imagenes = Imagene.new(user_params)
    if @imagenes.save
      redirect_to imagenes_url
    else
      render action: 'nuevo'
    end
  end

  def update
    @imagenes = Imagene.find(params[:id])
    if @imagenes.update_attributes(user_params)
      redirect_to imagenes_url
    else
      render action: 'editar'
    end
  end

  def user_params
    params.require(:imagene).permit(:nombre,:photo1,:photo2,:photo3,:photo4,:photo5,:photo6,:photo7,:photo8)
  end

end
