class NoticiasController < ApplicationController
#load_and_authorize_resource :class => NoticiaEscuela
#skip_authorize_resource :only => [:inicio,:mostrarn,:eventos]
  
  def inicio
    if params[:search]
      t = Time.now
      t.to_s
      t.strftime "%d-%m-%Y"
      @noticia_escuelas = NoticiaEscuela.where("nombre like ?", "#{params[:search]}%").order('id DESC').paginate(page: params[:page], per_page: 5)
      @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
    else
      @noticia_escuelas = NoticiaEscuela.all.order('id DESC').paginate(page: params[:page], per_page: 5)
      @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
  end
  end

  def mostrarn
    @noticia_escuelas = NoticiaEscuela.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
  end

  def editarn
    @noticia_escuelas = NoticiaEscuela.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
  end

  def eliminarn
    @noticia_escuelas = NoticiaEscuela.find(params[:id])
    @noticia_escuelas.destroy
    respond_to do |format|
      format.html {redirect_to noticias_inicio_url, notice:'fue eliminado'}
    end
  end

  def nuevon
    @noticia_escuelas = NoticiaEscuela.new
    authorize! :nuevon, @noticia_escuelas
  end

  def eventos
    if params[:search]
      @evento_escuelas = EventoEscuela.where("nombre like ?", "#{params[:search]}%").paginate(page: params[:page], per_page: 5)
      @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
    else
      @evento_escuelas = EventoEscuela.all.order('id DESC').paginate(page: params[:page], per_page: 5)
      @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
    end
  end

  def mostrare
    @evento_escuelas = EventoEscuela.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
  end

  def editare
    @evento_escuelas = EventoEscuela.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
  end

  def nuevoe
    @evento_escuelas = EventoEscuela.new
  end

  def eliminare
    @evento_escuelas = EventoEscuela.find(params[:id])
    @evento_escuelas.destroy
    respond_to do |format|
      format.html {redirect_to noticias_eventos_url, notice:'fue eliminado'}
    end
  end

  def buscarnoticia
    if params[:search]
      @noticia_escuelas = NoticiaEscuela.where("descripcion like ?", "#{params[:search]}%")
      @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
    end
  end

  def buscarevento
    if params[:search]
      @evento_escuelas = EventoEscuela.where("descripcion like ?", "#{params[:search]}%")
      @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
    end
  end

  def noticiacreate
    @noticia_escuelas = NoticiaEscuela.new(user_paramsn)
    if @noticia_escuelas.save
      redirect_to noticias_inicio_url
    else
      render action: 'nuevon'
    end
  end

  def eventocreate
    @evento_escuelas = EventoEscuela.new(user_paramse)
    if @evento_escuelas.save
      redirect_to noticias_eventos_url
    else
      render action: 'nuevoe'
    end
  end

  def updatee
    @evento_escuelas = EventoEscuela.find(params[:id])
    if @evento_escuelas.update_attributes(user_paramse)
      redirect_to noticias_eventos_url
    else
      render action: 'editare'
    end
  end

  def updaten
    @noticia_escuelas = NoticiaEscuela.find(params[:id])
    if @noticia_escuelas.update_attributes(user_paramsn)
      redirect_to noticias_inicio_url
    else
      render action: 'editarn'
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
    redirect_to noticias_inicio_url
  end

  def newcasilla
    @casillas = Casilla.new
  end

  def createcasilla
    @casillas = Casilla.new(casilla_params)
    if @casillas.update_attributes(casilla_params)
      redirect_to noticias_inicio_url
    else
      render action: 'newcasilla'
    end
  end

  def eliminarc
    @casillas = Casilla.find(params[:id])
    @casillas.destroy
    respond_to do |format|
      format.html {redirect_to noticias_inicio_url, notice:'Casilla Eliminada.'}
    end
  end

  def editarc
    @casillas = Casilla.find(params[:id])
  end

  def updatec
    @casillas = Casilla.find(params[:id])
    if @casillas.update_attributes(casilla_params)
      redirect_to noticias_inicio_url
    else
      render action: 'editar'
    end
  end

  def opcion1
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion1_noticias'")
  end

  def opcion2
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion2_noticias'")
  end

  def opcion3
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
    @opciones = Opcion.where("lugar = 'opcion3_noticias'")
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
      redirect_to noticias_inicio_url
    else
      render action: 'nuevaopcion'
    end
  end

  def eliminaro
    @opciones = Opcion.find(params[:id])
    @opciones.destroy
    respond_to do |format|
      format.html {redirect_to noticias_inicio_url, notice:'Casilla Eliminada.'}
    end
  end

  def editaro
    @opciones = Opcion.find(params[:id])
  end

  def updateo
    @opciones = Opcion.find(params[:id])
    if @opciones.update_attributes(opcion_params)
      redirect_to noticias_inicio_url
    else
      render action: 'editaro'
    end
  end

  def ver1
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
  end

  def ver2
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
  end

  def ver3
    @opciones = Opcion.find(params[:id])
    @casillas = Casilla.where("ubicacion = 'noticias'").order("id ASC")
  end

  def opcion_params
    params.require(:opcion).permit(:opcion, :titulo, :texto, :document, :lugar) #retorna un hash con todos los valores del academico...
  end

  def casilla_params
    params.require(:casilla).permit(:nombre,:activo,:link,:ver,:ubicacion) #retorna un hash con todos los valores del academico...
  end


  def user_paramsn
    params.require(:noticia_escuela).permit(:nombre,:cuerpo,:imagen,:fecha,:descripcion,:photo)
  end

  def user_paramse
    params.require(:evento_escuela).permit(:nombre,:lugar,:descripcion,:imagen,:fecha,:hora,:photo)
  end
end
