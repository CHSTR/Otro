class PortalController < ApplicationController
  def inicio
    @noticia_escuelas = NoticiaEscuela.all
    @evento_escuelas=EventoEscuela.all
  end

  def nuevo
  end

  def editar
  end

  def eliminar
  end
end
