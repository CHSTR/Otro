class InicioeController < ApplicationController
  #authorize_resource :class => Etexto
  #skip_authorize_resource :only => [:inicio, :misionvision, :pde, :historia]

  def editarhistoria
    @etextos = Etexto.where("nombre like ?", "historia").first
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def editarinicio
    @etextos = Etexto.where("nombre like ?", "inicio").first
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def editarmisionvision
    @etextos = Etexto.where("nombre like ?", "mision/vision").first
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def editarpde
    @etextos = Etexto.where("nombre like ?", "pde").first
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def historia
    @etextos = Etexto.where("nombre like ?", "historia").first
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def inicio
    @etextos = Etexto.where("nombre like ?", "inicio").first
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def misionvision
    @etextos = Etexto.where("nombre like ?", "mision/vision").first
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def pde
    @etextos = Etexto.where("nombre like ?", "pde").first
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def nuevotexto
      @etextos = Etexto.new
  end

  def updatehistoria
    @etextos = Etexto.where("nombre like ?", "historia").first
    if @etextos.update_attributes(user_params)
      redirect_to inicioe_historia_url
    else
      render action: 'editarhistoria'
    end
  end

  def updateinicio
    @etextos = Etexto.where("nombre like ?", "inicio").first
    if @etextos.update_attributes(user_params)
      redirect_to inicioe_inicio_url
    else
      render action: 'editarinicio'
    end
  end

  def updatemisionvision
    @etextos = Etexto.where("nombre like ?", "mision/vision").first
    if @etextos.update_attributes(user_params)
      redirect_to inicioe_misionvision_url
    else
      render action: 'editarmisionvision'
    end
  end

  def updatepde
    @etextos = Etexto.where("nombre like ?", "pde").first
    if @etextos.update_attributes(user_params)
      redirect_to inicioe_pde_url
    else
      render action: 'editarpde'
    end
  end

  def textocreate
    @etextos = Etexto.new(user_params)
    if @etextos.save
      redirect_to inicioe_inicio_url
    else
      render action: 'nuevotexto'
    end
  end



  def ecasilla
    @casillas = Casilla.find(params[:id])
    if @casillas.activo == 1
      @casillas.activo = 0
    else
      @casillas.activo=1
    end
    @casillas.save
    redirect_to inicioe_inicio_url
  end

  def nuevacasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to inicioe_inicio_url
    else
      render action: 'nuevacasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to inicioe_inicio_url, notice:'Casilla Eliminada.'}
    end
  end

  def editar
    @casillas = Casilla.find(params[:id])
  end

  def update
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to inicioe_inicio_url
    else
      render action: 'editar'
    end
  end

  def opcion1
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion1_inicioe'")
  end

  def opcion2
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion2_inicioe'")
  end

  def opcion3
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion3_inicioe'")
  end

  def nuevaopcion
    @opciones = Opcion.new
  end

  def nuevaopcion2
    @opciones = Opcion.new
  end

  def nuevaopcion3
    @opciones = Opcion.new
  end

  def createopcion
    @opciones = Opcion.new(opcion_params)
    if @opciones.update_attributes(opcion_params)
      redirect_to inicioe_inicio_url
    else
      render action: 'nuevaopcion'
    end
  end

  def eliminaro
    @opciones = Opcion.find(params[:id])
    @opciones.destroy
    respond_to do |format|
      format.html {redirect_to inicioe_inicio_url, notice:'Casilla Eliminada.'}
    end
  end

  def editaro
    @opciones = Opcion.find(params[:id])
  end

  def updateo
    @opciones = Opcion.find(params[:id])
    if @opciones.update_attributes(opcion_params)
      redirect_to inicioe_inicio_url
    else
      render action: 'editaro'
    end
  end

  def ver1
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def ver2
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def ver3
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'inicioe'").order("id ASC")
  end

  def opcion_params
    params.require(:opcion).permit(:opcion, :titulo, :texto, :document, :lugar) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

  def user_params
    params.require(:etexto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end
end

