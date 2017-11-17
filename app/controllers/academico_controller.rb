class AcademicoController < ApplicationController

  def index
    if params[:search]
      @academicos = Academico.where("nombre like ?", "#{params[:search]}%")
    else
      @academicos = Academico.where("jornada like ?", "JC") 
    end
  end

  def MJ
    @academicos = Academico.where("jornada like ?", "MJ")
  end

  def JP
    @academicos = Academico.where("jornada like ?", "JP")
  end

  def mostrar
    @academicos = Academico.find(params[:id])
  end

  def editar
    @academicos = Academico.find(params[:id])
  end

  def new
    @academicos = Academico.new
  end

  def create
    @academico = Academico.new(user_params)
    if @academico.save
      redirect_to academico_url
    else
      render action: 'new'
      
    end
  end

  def update
    @academicos = Academico.find(params[:id])
    if @academicos.update_attributes(user_params)
      redirect_to academico_url
    else
      render action: 'editar'
    end
  end

  def user_params
    params.require(:academico).permit(:nombre,:apellido,:titulo_profesional,:grado,:area_interes,:correo,:jornada,:imagen,:link1,:link2,:link3,:descripcion) #retorna un hash con todos los valores del academico...
  end

  def set_academico
    @academico = Academico.fin(params[:id])
  end
end
