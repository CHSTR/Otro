class InicioeController < ApplicationController
  def editarhistoria
    @etextos = Etexto.where("id != 1 and nombre like ?", "historia").first
  end

  def editarinicio
    @etextos = Etexto.where("nombre like ?", "inicio").first
  end

  def editarmisionvision
    @etextos = Etexto.where("id != 1 and nombre like ?", "mision/vision").first
  end

  def editarpde
    @etextos = Etexto.where("id != 1 and nombre like ?", "pde").first
  end

  def historia
    @etextos = Etexto.where("id != 1 and nombre like ?", "historia").first
  end

  def inicio
    @etextos = Etexto.where("nombre like ?", "inicio").first
  end

  def misionvision
    @etextos = Etexto.where("id != 1 and nombre like ?", "mision/vision").first
  end

  def pde
    @etextos = Etexto.where("id != 1 and nombre like ?", "pde").first
  end

  def nuevotexto
    @etextos = Etexto.new
  end

  def updatehistoria
    @etextos = Etexto.where("id != 1 and nombre like ?", "historia").first
    if @etextos.update_attributes(user_params)
      redirect_to inicioe_historia_url
    else
      render action: 'editarhistoria'
    end
  end

  def updateinicio
    @etextos = Etexto.where("id != 1 and nombre like ?", "inicio").first
    if @etextos.update_attributes(user_params)
      redirect_to inicioe_inicio_url
    else
      render action: 'editarinicio'
    end
  end

  def updatemisionvision
    @etextos = Etexto.where("id != 1 and nombre like ?", "mision/vision").first
    if @etextos.update_attributes(user_params)
      redirect_to inicioe_misionvision_url
    else
      render action: 'editarmisionvision'
    end
  end

  def updatepde
    @etextos = Etexto.where("id != 1 and nombre like ?", "pde").first
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

  def user_params
    params.require(:etexto).permit(:nombre, :descripcion, :imagen, :descripcion_imagen) #retorna un hash con todos los valores del academico...
  end
end

