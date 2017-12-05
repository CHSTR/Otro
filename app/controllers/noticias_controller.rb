class NoticiasController < ApplicationController
load_and_authorize_resource :class => NoticiaEscuela
skip_authorize_resource :only => [:inicio,:mostrarn,:eventos]
  
  def inicio
    if params[:search]
      @noticia_escuelas = NoticiaEscuela.where("nombre like ?", "#{params[:search]}%")
    else
      @noticia_escuelas = NoticiaEscuela.all.paginate(page: params[:page], per_page: 1)
  end
  end

  def mostrarn
    @noticia_escuelas = NoticiaEscuela.find(params[:id])
  end

  def editarn
    @noticia_escuelas = NoticiaEscuela.find(params[:id])
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
      @evento_escuelas = EventoEscuela.where("nombre like ?", "#{params[:search]}%")
    else
      @evento_escuelas = EventoEscuela.all.paginate(page: params[:page], per_page: 1)
    end
  end

  def mostrare
    @evento_escuelas = EventoEscuela.find(params[:id])
  end

  def editare
    @evento_escuelas = EventoEscuela.find(params[:id])
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
    end
  end

  def buscarevento
    if params[:search]
      @evento_escuelas = EventoEscuela.where("descripcion like ?", "#{params[:search]}%")
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

  def user_paramsn
    params.require(:noticia_escuela).permit(:nombre,:cuerpo,:imagen,:fecha,:descripcion) #retorna un hash con todos los valores del academico...
  end

  def user_paramse
    params.require(:evento_escuela).permit(:nombre,:lugar,:descripcion,:imagen,:fecha,:hora) #retorna un hash con todos los valores del academico...
  end
end
