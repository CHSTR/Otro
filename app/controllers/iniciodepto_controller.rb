class IniciodeptoController < ApplicationController
  def index
      if params[:search]
        @textos = Texto.where("nombre like ?", "#{params[:search]}%")
      else
        @textos = Texto.where("id != 1 and nombre like ?", "Inicio")
      end
  end

  def pde
    @academicos = Academico.where("id != 1 and nombre like ?", "PDE").first
  end

  def inicio
    @textos = Texto.where("nombre like ?", "Inicio")
  end

  def historia
    @textos = Texto.where("id != 1 and nombre like ?", "Historia").first
  end

  def misionvision
    @textos = Texto.where("id != 1 and nombre like ?", "Mision/Vision")
  end

  def editarinicio
    @textos = Texto.find(params[:id])
  end

  def editarhistoria
    @textos = Texto.find(params[:id])
  end

  def editarmisionvision
      @textos = Texto.find(params[:id])
  end

  def updatehistoria
    @textos = Texto.find(params[:id])
    if @textos.update_attributes(user_params)
      redirect_to academico_url
    else
      render action: 'editarhistoria'
    end
  end

  def updateinicio
    @textos = Texto.find(params[:id])
    if @textos.update_attributes(user_params)
      redirect_to academico_url
    else
      render action: 'editarinicio'
    end
  end

  def updatemisionvision
    @textos = Texto.find(params[:id])
    if @textos.update_attributes(user_params)
      redirect_to academico_url
    else
      render action: 'editarmisionvision'
    end
  end


  def editarpde
  end

  def nuevotexto
    @textos = Texto.new
  end

  def textocreate
    @textos = Texto.new(user_params)
    if @textos.save
      redirect_to iniciodepto_url
    else
      render action: 'nuevotexto'
    end
  end

  def eliminartexto
  end

  def nuevopde
  end

  def eliminarpde
  end

  def user_params
    params.require(:texto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end
end
