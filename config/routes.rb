Rails.application.routes.draw do
  
<<<<<<< HEAD
  # -------- comienza estudinte-------------

  get 'estudiante/', to:'estudiante#index', as:'centro'

  get 'estudiante/crear', to:'estudiante#crear', as:'nuevo'

  post 'estudiante/crear', to: 'estudiante#crearcentro'

  get 'estudiante/:id/editar', to: 'estudiante#editar', as:'editar'

  put 'estudiante/:id/editar', to: 'estudiante#update'

  patch 'estudiante/:id/editar', to: 'estudiante#update'

  delete 'estudiante/:id', to:'estudiante#eliminar', as:'eliminar'

  #---------------------------segunda pestaña-----------------------

  get 'estudiante/reglamento', to:'estudiante#reglamento', as:'reglamento'

  get 'estudiante/reglamento/crear', to:'estudiante#crearregla', as:'nuevo_reglamento'

  post 'estudiante/reglamento/crear', to: 'estudiante#crearreglamento'

  get 'estudiante/reglamento/:id', to: 'estudiante#editarregla', as:'editar_reglamento'

  put 'estudiante/reglamento/:id', to: 'estudiante#updateregla'

  patch 'estudiante/reglamento/:id', to: 'estudiante#updateregla', as:'eliminar_regla'

  delete 'estudiante/reglamento/:id', to:'estudiante#eliminarregla'

=======
  get 'noticias/buscarnoticia', to: 'noticias#buscarnoticia', as: 'noticias_buscarnoticia'

  get 'noticias/buscarevento', to: 'noticias#buscarevento', as: 'noticias_buscarevento'

  get 'noticias/inicio', to: 'noticias#inicio'

  get 'noticias/mostrarn/:id', to:'noticias#mostrarn'

  get 'noticias/:id/editarn', to: 'noticias#editarn', as: 'noticias_editarn'
  put 'noticias/:id', to: 'noticias#updaten'
  patch 'noticias/:id', to: 'noticias#updaten'

  get 'noticias/eliminarn'
  delete 'noticias/eliminarn/:id', to: 'noticias#eliminarn', as:'eliminar_noticia'

  get 'noticias/nuevon', to: 'noticias#nuevon', as: 'noticias_nuevon'
  post 'noticias/nuevon', to: 'noticias#noticiacreate'

  get 'noticias/eventos', to:'noticias#eventos'

  get 'noticias/mostrare/:id', to: 'noticias#nostrare'

  get 'noticias/:id/editare', to: 'noticias#editare', as: 'noticias_editare'
  put 'noticias/:id/editare', to: 'noticias#updatee'
  patch 'noticias/:id/editare', to: 'noticias#updatee'

  get 'noticias/nuevoe', to: 'noticias#nuevoe', as: 'noticias_nuevoe'
  post 'noticias/nuevoe', to: 'noticias#eventocreate'

  get 'noticias/eliminare'
  delete 'noticias/eliminare/:id', to: 'noticias#eliminare', as:'eliminar_evento'

  #--------------------------------------------------------------------

  get 'inicioe/editarhistoria', to: 'inicioe#editarhistoria', as: 'inicioe_editarhistoria'

  put 'inicioe/editarhistoria', to: 'inicioe#updatehistoria'

  patch 'inicioe/editarhistoria', to: 'inicioe#updatehistoria'

  get 'inicioe/editarinicio', to: 'inicioe#editarinicio', as: 'inicioe_editarinicio'

  put 'inicioe/editarinicio', to: 'inicioe#updateinicio'

  patch 'inicioe/editarinicio', to: 'inicioe#updateinicio'

  get 'inicioe/editarmisionvision', to: 'inicioe#editarmisionvision', as: 'inicioe_editarmisionvision'

  put 'inicioe/editarmisionvision', to: 'inicioe#updatemisionvision'

  patch 'inicioe/editarmisionvision', to: 'inicioe#updatemisionvision'

  get 'inicioe/editarpde', to: 'inicioe#editarpde', as: 'inicioe_editarpde'

  put 'inicioe/editarpde', to: 'inicioe#updatepde'

  patch 'inicioe/editarpde', to: 'inicioe#updatepde'

  get 'inicioe/historia', to: 'inicioe#historia', as: 'inicioe_historia'

  get 'inicioe/inicio', to: 'inicioe#inicio', as: 'inicioe_inicio'

  get 'inicioe/misionvision', to: 'inicioe#misionvision', as: 'inicioe_misionvision'

  get 'inicioe/pde', to: 'inicioe#pde', as: 'inicioe_pde'

  get 'inicioe/nuevotexto', to: 'inicioe#nuevotexto', as: 'inicioe_nuevotexto'

  post 'inicioe/nuevotexto', to: 'inicioe#textocreate'


#---------------------------------------------
  
>>>>>>> 91ee6366aad22238f65704fe9a8e2389f7620b23
  #-------------------------comienza contacto---------------------

  get 'contactod/', to:'contactod#index', as:'contacto'

  post 'contactod/', to:'contactod#crear'

  #--------------------------termina contato----------------------

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

  get 'organizacion/', to: 'organizacion#index', as:'organizacion'

  get 'organizacion/new', to:'organizacion#new', as:'new_funcionario'

  post 'organizacion/new', to:'organizacion#crear'

  get'organizacion/:id/editar', to:'organizacion#editar', as:'editar_funcionario'

  put 'organizacion/:id', to:'organizacion#update'

  patch 'organizacion/:id', to:'organizacion#update'

  delete 'organizacion/:id', to: 'organizacion#eliminar', as:'eliminar_organizacion'

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
