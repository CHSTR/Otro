class IniciodeptoController < ApplicationController
  def index
      if params[:search]
        @textos = Texto.where("nombre like ?", "#{params[:search]}%")
      else
<<<<<<< 9efd67fea3b07829bd8b997fd15a4bddb79923e5
        @textos = Texto.where("id != 1 and nombre like ?", "Inicio")
=======
        @textos = Texto.where("id != 1 and nombre like ?", "inicio")
>>>>>>> inicio funcional completo
      end
  end

  def pde
<<<<<<< 9efd67fea3b07829bd8b997fd15a4bddb79923e5
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
=======
    @textos = Texto.where("id != 1 and nombre like ?", "pde").first
  end

  def inicio
    @textos = Texto.where("nombre like ?", "inicio").first
  end

  def historia
    @textos = Texto.where("id != 1 and nombre like ?", "historia").first
  end

  def misionvision
    @textos = Texto.where("id != 1 and nombre like ?", "mision/vision").first
  end

  def editarinicio
    @textos = Texto.where("id != 1 and nombre like ?", "inicio").first
  end

  def editarhistoria
    @textos = Texto.where("id != 1 and nombre like ?", "historia").first
  end

  def editarmisionvision
    @textos = Texto.where("id != 1 and nombre like ?", "mision/vision").first
  end

  def updatehistoria
    @textos = Texto.where("id != 1 and nombre like ?", "historia").first
    if @textos.update_attributes(user_params)
      redirect_to iniciodepto_historia_url
>>>>>>> inicio funcional completo
    else
      render action: 'editarhistoria'
    end
  end

  def updateinicio
<<<<<<< 9efd67fea3b07829bd8b997fd15a4bddb79923e5
    @textos = Texto.find(params[:id])
    if @textos.update_attributes(user_params)
      redirect_to academico_url
=======
    @textos = Texto.where("id != 1 and nombre like ?", "inicio").first
    if @textos.update_attributes(user_params)
      redirect_to iniciodepto_inicio_url
>>>>>>> inicio funcional completo
    else
      render action: 'editarinicio'
    end
  end

  def updatemisionvision
<<<<<<< 9efd67fea3b07829bd8b997fd15a4bddb79923e5
    @textos = Texto.find(params[:id])
    if @textos.update_attributes(user_params)
      redirect_to academico_url
=======
    @textos = Texto.where("id != 1 and nombre like ?", "mision/vision").first
    if @textos.update_attributes(user_params)
      redirect_to iniciodepto_misionvision_url
>>>>>>> inicio funcional completo
    else
      render action: 'editarmisionvision'
    end
  end


  def editarpde
<<<<<<< 9efd67fea3b07829bd8b997fd15a4bddb79923e5
=======
    @textos = Texto.where("id != 1 and nombre like ?", "pde").first
  end

  def updatepde
    @textos = Texto.where("id != 1 and nombre like ?", "pde").first
    if @textos.update_attributes(user_params)
      redirect_to iniciodepto_pde_url
    else
      render action: 'editarpde'
    end
>>>>>>> inicio funcional completo
  end

  def nuevotexto
    @textos = Texto.new
  end

  def textocreate
    @textos = Texto.new(user_params)
    if @textos.save
<<<<<<< 9efd67fea3b07829bd8b997fd15a4bddb79923e5
      redirect_to iniciodepto_url
=======
      redirect_to iniciodepto_inicio_url
>>>>>>> inicio funcional completo
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
