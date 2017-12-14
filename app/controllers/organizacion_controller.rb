class OrganizacionController < ApplicationController
  load_and_authorize_resource :class =>  FuncionarioDepto
  skip_authorize_resource :only => [:index,:organigrama]
  def index
    @funcionario_deptos = FuncionarioDepto.all
  end

  def new
    @funcionario_deptos = FuncionarioDepto.new
  end

  def crear
    @funcionario_deptos = FuncionarioDepto.new(funcionario_params)
    if @funcionario_deptos.save
      redirect_to organizacion_url
    else
      render action: 'new'
    end
  end

  def delete
  end

  def update
    @funcionario_deptos = FuncionarioDepto.find(params[:id])
    if @funcionario_deptos.update_attributes(funcionario_params)
      redirect_to organizacion_url
    else
      render action: 'editar'
    end
  end

  def editar
    @funcionario_deptos = FuncionarioDepto.find(params[:id])
  end

  def eliminar
    @funcionario_deptos = FuncionarioDepto.find(params[:id])
    @funcionario_deptos.destroy
    respond_to do |format|
      format.html {redirect_to organizacion_url, notice:'fue eliminado'}
    end  
  end

  #---------------------------------------------------

  def organigrama
    @textos = Texto.where("nombre like ?", "organigrama").first
  end

  def editarorganigrama
    @textos = Texto.where("nombre like ?", "organigrama").first
  end

  def updateorganigrama
    @textos = Texto.where("nombre like ?", "organigrama").first
    if @textos.update_attributes(user_paramso)
      redirect_to organizacion_organigrama_url
    else
      render action: 'editarorganigrama'
    end
  end

  def nuevoorganigrama
    @textos = Texto.new
  end

  def createorganigrama
    @textos = Texto.new(user_paramso)
    if @textos.save
      redirect_to organizacion_organigrama_url
    else
      render action: 'nuevoorganigrama'
    end
  end

  def user_paramso
    params.require(:texto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end

  def funcionario_params
    params.require(:funcionario_depto).permit(:nombre,:cargo,:correo,:imagen,:funcion,:photo)
  end
end
