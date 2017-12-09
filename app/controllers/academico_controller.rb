class AcademicoController < ApplicationController
  authorize_resource :class => Academico
  authorize_resource :class => Casilla
  skip_authorize_resource :only => [:index,:MJ,:JP,:mostrar]

  def index
    if params[:search]
      @academicos = Academico.where("nombre like ? or apellido like ?", "#{params[:search]}%", "#{params[:search]}%").order('apellido ASC')
    else
      @academicos = Academico.where("jornada like ?", "JC").order('apellido ASC') 
    end
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
    @casillas.each do |i|   #Redirecciona bien
      if i.link != "academico"
        i.link="academico/"+i.link 
      end
    end 
  end

  def ver
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)  
  end

  def MJ
    @academicos = Academico.where("id != 1 and jornada like ?", "MJ").order('apellido ASC')
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
      @casillas.each do |i|   #Redirecciona bien
        if i.link == "academico"
          i.link="/"+i.link 
        end
      end 
  end

  def JP
    @academicos = Academico.where("id != 1 and jornada like ?", "JP").order('apellido ASC')
    @casillas = Casilla.where("ubicacion = 'academico'").order(:nombre)
      @casillas.each do |i|   #Redirecciona bien
        if i.link == "academico"
          i.link="/"+i.link 
        end
      end
  end

  def mostrar
    @casillas = Casilla.where("ubicacion = 'academico'").order(:id)
    @academicos = Academico.find(params[:id])
  end

  def editar
    @academicos = Academico.find(params[:id])
  end

  def new
    @academicos = Academico.new
  end
  
  def academicocreate
    @academicos = Academico.new(user_params)
    if @academicos.save
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

  def eliminar
    @academicos = Academico.find(params[:id])
    @academicos.destroy
    respond_to do |format|
      format.html {redirect_to academico_url, notice:'fue eliminado'}
    end  
  end
  #------------------------------------------------------------------------
  #comienzan los controladores de casilla
  #------------------------------------------------------------------------
 

  def ecasilla
    @casillas = Casilla.find(params[:id])
    if @casillas.activo == 1
        @casillas.activo = 0
    else
        @casillas.activo=1
    end 
    @casillas.save
    redirect_to academico_url
  end



  def newcasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to academico_url
    else
      render action: 'newcasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to academico_url, notice:'fue eliminado'}
    end  
  end

  def user_params
    params.require(:academico).permit(:nombre,:apellido,:titulo_profesional,:grado,:area_interes,:correo,:jornada,:imagen,:link1,:link2,:link3,:descripcion,:photo) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

  def set_academico
    @academico = Academico.fin(params[:id])
  end
end
