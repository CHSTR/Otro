class AcademicoController < ApplicationController

  def index
    if params[:search]
      @academicos = Academico.where("nombre like ?", "#{params[:search]}%")
    else
      @academicos = Academico.where("id != 1 and jornada like ?", "JC") 
    end
    @casillas = Casilla.where("ubicacion = 'academico'").order(:id)
    @casillas.each do |i|   #Redirecciona bien
      if i.link != "academico"
        i.link="academico/"+i.link 
      end
    end 
  end

  def MJ
    @academicos = Academico.where("id != 1 and jornada like ?", "MJ")
    @casillas = Casilla.where("ubicacion = 'academico'").order(:id)
      @casillas.each do |i|   #Redirecciona bien
        if i.link == "academico"
          i.link="/"+i.link 
        end
      end 
  end

  def JP
    @academicos = Academico.where("id != 1 and jornada like ?", "JP")
    @casillas = Casilla.where("ubicacion = 'academico'").order(:id)
      @casillas.each do |i|   #Redirecciona bien
        if i.link == "academico"
          i.link="/"+i.link 
        end
      end
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
  
  def academicocreate
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

<<<<<<< 9efd67fea3b07829bd8b997fd15a4bddb79923e5
  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to academico_url, notice:'fue eliminado'}
    end  
  end

=======
>>>>>>> inicio funcional completo
  def user_params
    params.require(:academico).permit(:nombre,:apellido,:titulo_profesional,:grado,:area_interes,:correo,:jornada,:imagen,:link1,:link2,:link3,:descripcion) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

  def set_academico
    @academico = Academico.fin(params[:id])
  end
end
