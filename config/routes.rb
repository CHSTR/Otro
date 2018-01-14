Rails.application.routes.draw do

  get 'main/welcome'

  get 'imagenes/', to: 'imagenes#inicio', as:'imagenes'

  get 'imagenes/nuevo', to: 'imagenes#nuevo', as:'imagenes_nuevo'
  post 'imagenes/nuevo', to: 'imagenes#create'

  get 'imagenes/:id/editar', to: 'imagenes#editar', as: 'imagenes_editar'
  put 'imagenes/:id', to: 'imagenes#update'
  patch 'imagenes/:id', to: 'imagenes#update'

  get 'imagenes/mostrar/:id', to:'imagenes#mostrar'

  get 'imagenes/eliminar'
  delete 'imagenes/eliminar/:id', to: 'imagenes#eliminar', as:'eliminar_imagenes'

  #-------------------------------------------------------------------------------------------

  get 'dependenciasd/', to: 'dependenciasd#inicio', as:'dependenciasd'

  get 'dependenciasd/nuevo', to: 'dependenciasd#nuevo', as:'dependenciasd_nuevo'
  post 'dependenciasd/nuevo', to: 'dependenciasd#create'

  get 'dependenciasd/:id/editar', to: 'dependenciasd#editar', as: 'dependenciasd_editar'
  put 'dependenciasd/:id', to: 'dependenciasd#update'
  patch 'dependenciasd/:id', to: 'dependenciasd#update'

  get 'dependenciasd/mostrar/:id', to:'dependenciasd#mostrar'

  get 'dependenciasd/eliminar'
  delete 'dependenciasd/eliminar/:id', to: 'dependenciasd#eliminar', as:'eliminar_dependenciasd'

  #---------------------------------------------------

  get 'dependenciase/', to: 'dependenciase#inicio', as:'dependenciase'

  get 'dependenciase/nuevo', to: 'dependenciase#nuevo', as:'dependenciase_nuevo'
  post 'dependenciase/nuevo', to: 'dependenciase#create'

  get 'dependenciase/:id/editar', to: 'dependenciase#editar', as: 'dependenciase_editar'
  put 'dependenciase/:id', to: 'dependenciase#update'
  patch 'dependenciase/:id', to: 'dependenciase#update'

  get 'dependenciase/mostrar/:id', to:'dependenciase#mostrar'

  get 'dependenciase/eliminar'
  delete 'dependenciase/eliminar/:id', to: 'dependenciase#eliminar', as:'eliminar_dependenciase'

  #------------------------------------------------------

  get 'administrar/', to:'administrar#index', as:'administrar_inicio'

  get 'administrar/:id/editar', to:'administrar#editar', as:'editar_usuarios'
  put 'administrar/:id', to: 'administrar#update'
  patch 'administrar/:id', to: 'administrar#update'

  delete 'administrar/:id', to:'administrar#eliminar', as:'eliminar_usuario'

  get 'administrar/eliminar'

  get 'organizacione/nuevoorganigrama', to: 'organizacione#nuevoorganigrama', as:'organizacione_nuevoorganigrama'
  post 'organizacione/nuevoorganigrama', to: 'organizacione#createorganigrama'

  get 'organizacione/organigrama', to: 'organizacione#organigrama', as:'organizacione_organigrama'

  get 'organizacione/editarorganigrama', to: 'organizacione#editarorganigrama', as: 'organizacione_editarorganigrama'
  put 'organizacione/editarorganigrama', to: 'organizacione#updateorganigrama'
  patch 'organizacione/editarorganigrama', to: 'organizacione#updateorganigrama'


  #------------------------------------------------------

  get 'organizacion/nuevoorganigrama', to: 'organizacion#nuevoorganigrama', as:'organizacion_nuevoorganigrama'
  post 'organizacion/nuevoorganigrama', to: 'organizacion#createorganigrama'

  get 'organizacion/organigrama', to: 'organizacion#organigrama', as:'organizacion_organigrama'

  get 'organizacion/editarorganigrama', to: 'organizacion#editarorganigrama', as: 'organizacion_editarorganigrama'
  put 'organizacion/editarorganigrama', to: 'organizacion#updateorganigrama'
  patch 'organizacion/editarorganigrama', to: 'organizacion#updateorganigrama'


  #------------------------------------------------------

  get 'linke/', to:'linke#inicio', as:'linke'

  get 'linke/:id/editar', to: 'linke#editar', as: 'linke_editar'
  put 'linke/:id', to: 'linke#update'
  patch 'linke/:id', to: 'linke#update'

  get 'linke/nuevo', to: 'linke#nuevo', as: 'linke_nuevo'
  post 'linke/nuevo', to: 'linke#create'

  get 'linke/eliminar'
  delete 'linke/eliminar/:id', to: 'linke#eliminar', as:'eliminar_linke'

  get 'linke/mostrar/:id', to: 'linke#mostrar'

  #-----------------------------------------------------

  get 'links/', to:'links#inicio', as:'links'

  get 'links/:id/editar', to: 'links#editar', as: 'links_editar'
  put 'links/:id', to: 'links#update'
  patch 'links/:id', to: 'links#update'

  get 'links/nuevo', to: 'links#nuevo', as: 'links_nuevo'
  post 'links/nuevo', to: 'links#create'

  get 'links/eliminar'
  delete 'links/eliminar/:id', to: 'links#eliminar', as:'eliminar_links'

  get 'links/mostrar/:id', to: 'links#mostrar'
#----------------------------------------------------------------------------
  get 'consulta/', to:'consulta#index', as:'consulta_index'

  get 'consulta/ver/:id', to:'consulta#ver', as:'ver_consulta'

  get 'consulta/crear/:id', to: 'consulta#crear', as:'nueva_consulta'

  post 'consulta/crear/:id', to: 'consulta#crearconsu'

  #patch 'consulta/crear/:id', to: 'consulta#crearconsu'

  get 'egresados/', to: 'egresados#index', as:'inicio_egresados'

  get 'egresados/nuevoinicio', to: 'egresados#nuevoinicio', as: 'egresados_nuevoinicio'
  post 'egresados/nuevoinicio', to: 'egresados#createinicio'

  get 'egresados/editarinicio', to: 'egresados#editarinicio', as: 'egresados_editarinicio'
  put 'egresados/editarinicio', to: 'egresados#updateinicio'
  patch 'egresados/editarinicio', to: 'egresados#updateinicio'

  get 'egresados/eliminar'
  delete 'egresados/eliminar/:id', to: 'egresados#eeliminar', as:'eliminar_egresados'

  get 'egresados/nuevo', to: 'egresados#nuevo', as: 'egresados_nuevo'
  post 'egresados/nuevo', to: 'egresados#crear'

  get 'egresados/tituygradua', as:'tituygradua_egresados'

  get 'egresados/tituygradua/:id', to:'egresados#leer'

  get 'egresados/egredesta'

  get 'egresados/nuevo', to:'egresados#nuevo', as:'nuevo_egresado'

  post 'egresados/nuevo', to:'egresados#crear'

  get 'egresados/todos', to:'egresados#todos', as:'todos_egresados'

  get 'egresados/todos/:id', to:'egresados#editar', as:'editar_egresado'

  put 'egresados/todos/:id', to:'egresados#update'

  patch 'egresados/todos/:id', to:'egresados#update'

  delete 'egresados/todos/:id', to:'egresados#eliminar', as:'eliminar_egresado'

  resources :roles
  devise_for :users, :controllers => { registrations: 'registrations' }
  root :to => "portal#inicio"


  get 'portal/', to: 'portal#inicio', as:'portal'

  get 'portal/nuevo'

  get 'portal/editar'

  get 'portal/eliminar'

  get 'portal/:id/casilla', to: 'portal#ecasilla', as:'editar_portal'

  delete 'portal/:id/casilla', to: 'portal#eliminarc', as:'eliminar_portal'

  get 'portal/:id/editar', to: 'portal#editar', as:'editar_portal_casilla'

  put 'portal/:id', to: 'portal#update'

  patch 'portal/:id', to: 'portal#update'

  get 'portal/newc', to: 'portal#nuevacasilla', as: 'portal_casilla'

  post 'portal/newc', to: 'portal#createcasilla'
#----------------------------------------------------------------


  
  get 'contacto/', to:'contacto#index', as:'contactoe'

  post 'contacto/', to:'contacto#crear'

  get 'organizacione/', to:'organizacione#index', as:'organizacion_escuela'

  get 'organizacione/new', to:'organizacione#new', as:'nuevo_funcionario'

  post 'organizacione/new', to:'organizacione#crear'

  get'organizacione/:id/editar', to:'organizacione#editar', as:'editar_funcionarioe'

  put 'organizacione/:id', to:'organizacione#update'


  patch 'organizacione/:id', to:'organizacione#update'

  delete 'organizacione/:id', to: 'organizacione#eliminare', as:'organizacione_eliminar'


  get 'laboral/', to:'laboral#index', as:'inicio_laboral'

  get 'laboral/mostrar/:id', to:'laboral#mostrar', as:'mostrar_laboral'

  delete 'laboral/eliminar/:id', to:'laboral#eliminar', as:'eliminar_laboral'

  get 'aceptar_oferta/', to:'aceptar_oferta#index', as:'inicio'

  delete 'aceptar_oferta/eliminar/:id', to:'aceptar_oferta#eliminar', as:'eliminar_oferta'

  get 'aceptar_oferta/cambiar/:id', to:'aceptar_oferta#cambiar', as:'cambiar'

  get 'aceptar_oferta/mostrar/:id', to:'aceptar_oferta#mostrar', as:'ver_oferta'

  get 'aceptar_oferta/editar/:id', to:'aceptar_oferta#editar', as:'editar_oferta'

  put 'aceptar_oferta/editar/:id', to:'aceptar_oferta#update'

  patch 'aceptar_oferta/editar/:id', to:'aceptar_oferta#update'

  #--------------------------------------------------------------------------

  get 'programas/', to: 'programas#inicio', as:'programas'

  get 'programas/mostrar/:id', to: 'programas#mostrar'

  get 'programas/editarinicio', to: 'programas#editarinicio', as: 'programas_editarinicio'
  put 'programas/editarinicio', to: 'programas#updateinicio'
  patch 'programas/editarinicio', to: 'programas#updateinicio'

  get 'programas/:id/editar', to: 'programas#editar', as: 'programas_editar'
  put 'programas/:id', to: 'programas#updatep'
  patch 'programas/:id', to: 'programas#updatep'

  get 'programas/eliminar'
  delete 'programas/eliminar/:id', to: 'programas#eliminar', as:'eliminar_programas'

  get 'programas/nuevo', to: 'programas#nuevo', as: 'programas_nuevo'
  post 'programas/nuevo', to: 'programas#create'

  get 'programas/buscar'

  get 'programas/pregrado', to:'programas#pregrado', as: 'programas_pregrado'

  get 'programas/postgrado', to:'programas#postgrado', as: 'programas_postgrado'

  get 'programas/otros', to: 'programas#otros', as: 'programas_otros'

  get 'programas/nuevoinicio', to: 'programas#nuevoinicio', as: 'programas_nuevoinicio'
  post 'programas/nuevoinicio', to: 'programas#createinicio'



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

  #----------------------------------------------------------------

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

  #-------------------------comienza contacto---------------------

  get 'contactod/', to:'contactod#index', as:'contactod'

  post 'contactod/', to:'contactod#crear'

  post 'contactod/', to:'contactod#crear_consulta'

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

  get 'iniciodepto/:id/casilla', to: 'iniciodepto#ecasilla', as:'editar_casilla_depto'

  delete 'iniciodepto/:id/casilla', to: 'iniciodepto#eliminarc', as:'eliminar_depto'

  get 'iniciodepto/:id/editar', to: 'iniciodepto#editar', as:'editar_depto_casilla'

  put 'iniciodepto/:id', to: 'iniciodepto#update'

  patch 'iniciodepto/:id', to: 'iniciodepto#update'

  get 'iniciodepto/newc', to: 'iniciodepto#nuevacasilla', as: 'depto_casilla'

  post 'iniciodepto/newc', to: 'iniciodepto#createcasilla'

  get 'iniciodepto/opci1', to: 'iniciodepto#opcion1', as:'opcion1'

  get 'iniciodepto/opci2', to: 'iniciodepto#opcion2', as:'opcion2'

  get 'iniciodepto/opci3', to: 'iniciodepto#opcion3', as:'opcion3'

  get 'iniciodepto/nuevoopcion', to: 'iniciodepto#nuevaopcion', as:'iniciodepto_nueva_opcion'

  get 'iniciodepto/nuevoopcion2', to: 'iniciodepto#nuevaopcion2', as:'iniciodepto_nueva_opcion2'

  get 'iniciodepto/nuevoopcion3', to: 'iniciodepto#nuevaopcion3', as:'iniciodepto_nueva_opcion3'

  post 'iniciodepto/nuevacopcion', to: 'iniciodepto#createopcion'

  get 'iniciodepto/ver1/:id', to: 'iniciodepto#ver1', as:"ver_1"

  get 'iniciodepto/ver2/:id', to: 'iniciodepto#ver2', as:"ver_2"

  get 'iniciodepto/ver3/:id', to: 'iniciodepto#ver3', as:"ver_3"

  get 'iniciodepto/editaro/:id', to: 'iniciodepto#editaro', as:"editar_opcion"

  put 'iniciodepto/update/:id', to: 'iniciodepto#updateo'

  patch 'iniciodepto/update/:id', to: 'iniciodepto#updateo'

  delete 'iniciodepto/eliminar/:id', to: 'iniciodepto#eliminaro', as:'eliminar_opcion'

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
  get 'investigacion/nuevotexto', to: 'investigacion#nuevotexto', as:'investigacion_nuevotexto'

  post 'investigacion/nuevotexto', to: 'investigacion#textocreate'
  get 'investigacion/editarinicio', to: 'investigacion#editarinicio', as: 'investigacion_editarinicio'

  put 'investigacion/editarinicio', to: 'investigacion#updateinicio'

  patch 'investigacion/editarinicio', to: 'investigacion#updateinicio'
  
  get 'investigacion/', to: 'investigacion#index', as:'inicio_investigacion'

  get 'investigacion/buscar', to: 'investigacion#buscar', as:'investigacion_buscar'

  get 'investigacion/ADI', to: 'investigacion#ADI', as:'investigacion_adi'

  get 'investigacion/ADI/new', to: 'investigacion#new', as:'new_area'

  post 'investigacion/ADI/new', to: 'investigacion#createa'

  get 'investigacion/ver/:id', to: 'investigacion#ver_area'

  get 'investigacion/ADI/:id/editar', to: 'investigacion#editar', as:'editar_area'

  put 'investigacion/ADI/:id', to: 'investigacion#update'

  patch 'investigacion/ADI/:id', to: 'investigacion#update'

  delete 'investigacion/ADI/:id', to: 'investigacion#eliminar', as:'eliminar_area'

  #-----------------comienzan los proyectos --------------------------------

  get 'investigacion/PRO', to: 'investigacion#pro', as:'investigacion_pro'

  get 'investigacion/PRO/:id/editar', to: 'investigacion#editarp', as:'editar_proyecto'

  put 'investigacion/PRO/:id', to: 'investigacion#updatep'

  patch 'investigacion/PRO/:id', to: 'investigacion#updatep'

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

  get 'academico/JC', to: 'academico#index', as:'academico'

  get 'academico/mostrar/:id', to: 'academico#mostrar'

  get 'academico/MJ/', to: 'academico#MJ'

  get 'academico/JP/', to: 'academico#JP', as: 'academico_jp'

  get 'academico/:id/ecasilla', to: 'academico#ecasilla', as:'editar_casilla'

  delete 'academico/:id/ecasilla', to: 'academico#eliminarc', as:'eliminar_casilla'

  get 'academico/:id/editar', to: 'academico#editar', as:'editar_academico'

  put 'academico/:id', to: 'academico#update'

  patch 'academico/:id', to: 'academico#update'

  get 'academico/new', to: 'academico#new', as: 'new_academico'

  get 'academico/newc', to: 'academico#newcasilla', as: 'new_casilla'

  post 'academico/newc', to: 'academico#createcasilla'

  post 'academico/new', to: 'academico#academicocreate'

  get 'academico/editarc/:id', to: 'academico#editarc', as:'editar_academico_casilla'

  put 'academico/actualizar/:id', to: 'academico#updatec'

  patch 'academico/actualizar/:id', to: 'academico#updatec'

  delete 'academico/:id', to: 'academico#eliminar', as:'eliminar_academico'

  get 'academico/opci1', to: 'academico#opcion1', as:'opcion1_academico'

  get 'academico/opci2', to: 'academico#opcion2', as:'opcion2_academico'

  get 'academico/opci3', to: 'academico#opcion3', as:'opcion3_academico'

  get 'academico/nuevoopcion', to: 'academico#nuevaopcion', as:'academico_nueva_opcion'

  get 'academico/nuevoopcion2', to: 'academico#nuevaopcion2', as:'academico_nueva_opcion2'

  get 'academico/nuevoopcion3', to: 'academico#nuevaopcion3', as:'academico_nueva_opcion3'

  post 'academico/nuevacopcion', to: 'academico#createopcion'

  get 'academico/ver1/:id', to: 'academico#ver1', as:"academico_ver_1"

  get 'academico/ver2/:id', to: 'academico#ver2', as:"academico_ver_2"

  get 'academico/ver3/:id', to: 'academico#ver3', as:"academico_ver_3"

  get 'academico/editaro/:id', to: 'academico#editaro', as:"editar_opcion_academico"

  put 'academico/update/:id', to: 'academico#updateo'

  patch 'academico/update/:id', to: 'academico#updateo'

  delete 'academico/eliminar/:id', to: 'academico#eliminaro', as:'eliminar_opcion_academico'

  #Falta toda escual y contacto...
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
