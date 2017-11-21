Rails.application.routes.draw do
  
  get 'iniciodepto/nuevotexto', to: 'iniciodepto#nuevotexto', as:'iniciodepto_nuevotexto'

  post 'iniciodepto/nuevotexto', to: 'iniciodepto#textocreate'

  get 'iniciodepto/eliminartexto'

  get 'iniciodepto/nuevopde'

  get 'iniciodepto/eliminarpde'

  get 'iniciodepto/editarinicio', to: 'iniciodepto#editarinicio', as: 'iniciodepto_editarinicio'

  put 'iniciodepto/editarinicio', to: 'iniciodepto#updateinicio'

  patch 'iniciodepto/editarinicio', to: 'iniciodepto#updateinicio'

  get 'iniciodepto/editarhistoria', to:'iniciodepto#editarhistoria', as: 'iniciodepto_editarhistoria'

  put 'iniciodepto/editarhistoria', to: 'iniciodepto#updatehistoria'

  patch 'iniciodepto/editarhistoria', to: 'iniciodepto#updatehistoria'

  get 'iniciodepto/editarmisionvision', to: 'iniciodepto#editarmisionvision', as: 'iniciodepto_editarmisionvision'

  put 'iniciodepto/editarmisionvision', to: 'iniciodepto#updatemisionvision'

  patch 'iniciodepto/editarmisionvision', to: 'iniciodepto#updatemisionvision'

  get 'iniciodepto/editarpde', to: 'iniciodepto#editarpde', as: 'iniciodepto_editarpde'

  put 'iniciodepto/editarpde', to: 'iniciodepto#updatepde'

  patch 'iniciodepto/editarpde', to: 'iniciodepto#updatepde'

  get 'iniciodepto/index'

  get 'iniciodepto/mostrar'

  get 'iniciodepto/eliminar'

  get 'iniciodepto/update'

  get 'iniciodepto/nuevo'

  get 'iniciodepto/crear'

  get 'iniciodepto/editar'

  get 'iniciodepto/pde', to: 'iniciodepto#pde', as: 'iniciodepto_pde'

  get 'iniciodepto/inicio', to: 'iniciodepto#inicio', as: 'iniciodepto_inicio'

  get 'iniciodepto/historia', to: 'iniciodepto#historia', as: 'iniciodepto_historia'

  get 'iniciodepto/misionvision', to: 'iniciodepto#misionvision', as: 'iniciodepto_misionvision'

  get 'inicio/index'

  get 'inicio/mostrar'

  get 'inicio/eliminar'

  get 'inicio/update'

  get 'inicio/nuevo'

  get 'inicio/crear'

  get 'inicio/editar'

  get 'inicio/pde'

  get 'inicio/noticias'

  get 'inicio/historia'

  get 'inicio/misionvision'
  #--------------------comienza organizacion------------------------------

  get 'organizacion/', to: 'organizacion#index'

  #-----------------------------comienza investigacion inicio ---------------------
  
  get 'investigacion/', to: 'investigacion#index'

  get 'investigacion/buscar', to: 'investigacion#buscar', as:'investigacion_buscar'

  get 'investigacion/ADI', to: 'investigacion#ADI', as:'investigacion_adi'

  get 'investigacion/ADI/new', to: 'investigacion#new', as:'new_area'

  post 'investigacion/ADI/new', to: 'investigacion#createa'

  get 'investigacion/ver/:id', to: 'investigacion#ver'

  get 'investigacion/ADI/:id/editar', to: 'investigacion#editar', as:'editar_area'

  put 'investigacion/ADI/:id', to: 'investigacion#update'

  patch 'investigacion/ADI/:id', to: 'investigacion#update'

  delete 'investigacion/ADI/:id', to: 'investigacion#eliminar', as:'eliminar_area'

  #-----------------comienzan los proyectos --------------------------------

  get 'investigacion/PRO', to: 'investigacion#pro', as:'investigacion_pro'

  get 'investigacion/PRO/newp', to: 'investigacion#newp', as:'new_proyecto'

  post 'investigacion/PRO/newp', to: 'investigacion#createp'

  get 'investigacion/PRO/newr', to: 'investigacion#newr', as:'new_relacion'

  post 'investigacion/PRO/newr', to: 'investigacion#creater'

  delete 'investigacion/PRO/:id', to: 'investigacion#eliminarp', as:'eliminar_proyecto'

  #------------------terminan los proyectos-----------------------------

  get 'tipo_texto/index'

  get 'tipo_texto/mostrar'

  get 'tipo_texto/editar'

  get 'tipo_texto/new'

  get 'tipo_texto/create'

  get 'tipo_texto/update'

  #-----------------------comienza academicos------------------------------

  get 'academico/', to: 'academico#index', as:'academico'

  get 'academico/mostrar/:id', to: 'academico#mostrar'

  get 'academico/MJ/', to: 'academico#MJ'

  get 'academico/JP/', to: 'academico#JP'

  get 'academico/:id/ecasilla', to: 'academico#ecasilla', as:'editar_casilla'

  delete 'academico/:id/ecasilla', to: 'academico#eliminarc', as:'eliminar_casilla'

  get 'academico/:id/editar', to: 'academico#editar', as:'editar_academico'

  put 'academico/:id', to: 'academico#update'

  patch 'academico/:id', to: 'academico#update'

  get 'academico/new', to: 'academico#new', as: 'new_academico'

  get 'academico/newc', to: 'academico#newcasilla', as: 'new_casilla'

  post 'academico/newc', to: 'academico#createcasilla'

  post 'academico/new', to: 'academico#academicocreate'

  delete 'academico/:id', to: 'academico#eliminar', as:'eliminar_academico'

  #Falta toda escual y contacto...
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
