class OrganizacioneController < ApplicationController
  load_and_authorize_resource :class => FuncionarioEscuela
  skip_authorize_resource :only => [:index]
  def index
  	@funcionario_escuelas = FuncionarioEscuela.all
  end

  def eliminare
  	@funcionario_escuelas = FuncionarioEscuela.find(params[:id])
    @funcionario_escuelas.destroy
    respond_to do |format|
      format.html {redirect_to organizacion_escuela_url, notice:'fue eliminado'}
    end 
  end

  def editar
  	@funcionario_escuelas = FuncionarioEscuela.find(params[:id])
  end

  def update
  	@funcionario_escuelas = FuncionarioEscuela.find(params[:id])
    if @funcionario_escuelas.update_attributes(escuela_params)
      redirect_to organizacion_escuela_url
    else
      render action: 'editar'
    end
  end

  def new
  	@funcionario_escuelas = FuncionarioEscuela.new
  end

  def crear
  	@funcionario_escuelas = FuncionarioEscuela.new(escuela_params)
    if @funcionario_escuelas.save
      redirect_to organizacion_escuela_url
    else
      render action: 'new'
    end
  end

  def escuela_params
    params.require(:funcionario_escuela).permit(:nombre,:cargo,:correo,:imagen,:funcion)
  end

end
