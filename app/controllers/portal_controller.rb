class PortalController < ApplicationController


  # before_action :authenticate_user!


  #before_action :authenticate_user!

  def inicio
    @casillas = Casilla.where("ubicacion = 'portal'").order(:nombre) 
    @oferta_laborals = OfertaLaboral.where(:aceptado => 0, :oferta_d => 0).count
    @consulta = OfertaLaboral.where(:aceptado => 0, :oferta_d => 1).count
    @noticia_escuelas = NoticiaEscuela.all.order('id DESC').limit(4)
    @evento_escuelas=EventoEscuela.order('id DESC').all.limit(4)
  end

  def ecasilla
    @casillas = Casilla.find(params[:id])
    if @casillas.activo == 1
        @casillas.activo = 0
    else
        @casillas.activo=1
    end 
    @casillas.save
    redirect_to portal_url
  end

  def nuevacasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to portal_url
    else
      render action: 'nuevacasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to portal_url, notice:'Casilla Eliminada.'}
    end  
  end

  def editar
    @casillas = Casilla.find(params[:id])
  end

  def update
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to portal_url
    else
      render action: 'editar'
    end
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end

end