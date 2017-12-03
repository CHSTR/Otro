class IniciodeptoController < ApplicationController
  def index
      if params[:search]
        @textos = Texto.where("nombre like ?", "#{params[:search]}%")
      else
        @textos = Texto.where("nombre like ?", "inicio").first
      end
  end

  def pde
    @textos = Texto.where("nombre like ?", "pde").first
  end

  def inicio
    @textos = Texto.where("nombre like ?", "inicio").first
  end

  def historia
    @textos = Texto.where("nombre like ?", "historia").first
  end

  def misionvision
    @textos = Texto.where("nombre like ?", "mision/vision").first
  end

  def editarinicio
    @textos = Texto.where("nombre like ?", "inicio").first
  end

  def editarhistoria
    @textos = Texto.where("nombre like ?", "historia").first
  end

  def editarmisionvision
    @textos = Texto.where("nombre like ?", "mision/vision").first
  end

  def updatehistoria
    @textos = Texto.where("nombre like ?", "historia").first
    if @textos.update_attributes(user_params)
      redirect_to iniciodepto_historia_url
    else
      render action: 'editarhistoria'
    end
  end

  def updateinicio
    @textos = Texto.where("nombre like ?", "inicio").first
    if @textos.update_attributes(user_params)
      redirect_to iniciodepto_inicio_url
    else
      render action: 'editarinicio'
    end
  end

  def updatemisionvision
    @textos = Texto.where("nombre like ?", "mision/vision").first
    if @textos.update_attributes(user_params)
      redirect_to iniciodepto_misionvision_url
    else
      render action: 'editarmisionvision'
    end
  end


  def editarpde
    @textos = Texto.where("nombre like ?", "pde").first
  end

  def updatepde
    @textos = Texto.where("nombre like ?", "pde").first
    if @textos.update_attributes(user_params)
      redirect_to iniciodepto_pde_url
    else
      render action: 'editarpde'
    end
  end

  def nuevotexto
    @textos = Texto.new
  end

  def textocreate
    @textos = Texto.new(user_params)
    if @textos.save
      redirect_to iniciodepto_inicio_url
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
