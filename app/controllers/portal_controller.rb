class PortalController < ApplicationController
  def inicio
    @noticia_escuelas = NoticiaEscuela.all.limit(4)
    @evento_escuelas=EventoEscuela.all.limit(4)
  end

  def nuevo
  end

  def editar
  end

  def eliminar
  end
end