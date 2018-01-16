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

  get 'linke/casillai/:id', to: 'linke#ecasilla', as:'editar_casilla_linke'

  delete 'linke/:id/ecasilla', to: 'linke#eliminarc', as:'eliminar_casilla_linke'

  get 'linke/:id/editar', to: 'linke#editar', as:'editar_linke'

  put 'linke/:id', to: 'linke#update'

  patch 'linke/:id', to: 'linke#update'

  get 'linke/new', to: 'linke#new', as: 'new_linke'

  get 'linke/newc', to: 'linke#newcasilla', as: 'linke_casilla'

  post 'linke/newc', to: 'linke#createcasilla'

  post 'linke/new', to: 'linke#investigacioncreate'

  get 'linke/editarc/:id', to: 'linke#editarc', as:'editar_linke_casilla'

  put 'linke/actualizar/:id', to: 'linke#updatec'

  patch 'linke/actualizar/:id', to: 'linke#updatec'

  get 'linke/opci1', to: 'linke#opcion1', as:'opcion1_linke'

  get 'linke/opci2', to: 'linke#opcion2', as:'opcion2_linke'

  get 'linke/opci3', to: 'linke#opcion3', as:'opcion3_linke'

  get 'linke/nuevoopcion', to: 'linke#nuevaopcion', as:'linke_nueva_opcion'

  get 'linke/nuevoopcion2', to: 'linke#nuevaopcion2', as:'linke_nueva_opcion2'

  get 'linke/nuevoopcion3', to: 'linke#nuevaopcion3', as:'linke_nueva_opcion3'

  post 'linke/nuevacopcion', to: 'linke#createopcion'

  get 'linke/ver1/:id', to: 'linke#ver1', as:"linke_ver_1"

  get 'linke/ver2/:id', to: 'linke#ver2', as:"linke_ver_2"

  get 'linke/ver3/:id', to: 'linke#ver3', as:"linke_ver_3"

  get 'linke/editaro/:id', to: 'linke#editaro', as:"editar_opcion_linke"

  put 'linke/update/:id', to: 'linke#updateo'

  patch 'linke/update/:id', to: 'linke#updateo'

  delete 'linke/delete/:id', to: 'linke#eliminaro', as:'eliminar_opcion_linke'

  #-----------------------------------------------------

  get 'links/', to:'links#inicio', as:'links'

  get 'links/:id/editar', to: 'links#editar', as: 'links_editar'
  put 'links/:id', to: 'links#update'
  patch 'links/:id', to: 'links#update'

  get 'links/nuevo', to: 'links#nuevo', as: 'links_nuevo'
  post 'links/nuevo', to: 'links#create'

  get 'links/eliminar'
  delete 'links/:id/borrar', to: 'links#eliminar', as:'eliminar_links'

  get 'links/mostrar/:id', to: 'links#mostrar'

  get 'links/casillai/:id', to: 'links#ecasilla', as:'editar_casilla_links'

  delete 'links/:id/ecasilla', to: 'links#eliminarc', as:'eliminar_casilla_links'

  get 'links/:id/editar', to: 'links#editar', as:'editar_links'

  put 'links/:id', to: 'links#update'

  patch 'links/:id', to: 'links#update'

  get 'links/new', to: 'links#new', as: 'new_links'

  get 'links/newc', to: 'links#newcasilla', as: 'links_casilla'

  post 'links/newc', to: 'links#createcasilla'

  post 'links/new', to: 'links#investigacioncreate'

  get 'links/editarc/:id', to: 'links#editarc', as:'editar_links_casilla'

  put 'links/actualizar/:id', to: 'links#updatec'

  patch 'links/actualizar/:id', to: 'links#updatec'

  get 'links/opci1', to: 'links#opcion1', as:'opcion1_links'

  get 'links/opci2', to: 'links#opcion2', as:'opcion2_links'

  get 'links/opci3', to: 'links#opcion3', as:'opcion3_links'

  get 'links/nuevoopcion', to: 'links#nuevaopcion', as:'links_nueva_opcion'

  get 'links/nuevoopcion2', to: 'links#nuevaopcion2', as:'links_nueva_opcion2'

  get 'links/nuevoopcion3', to: 'links#nuevaopcion3', as:'links_nueva_opcion3'

  post 'links/nuevacopcion', to: 'links#createopcion'

  get 'links/ver1/:id', to: 'links#ver1', as:"links_ver_1"

  get 'links/ver2/:id', to: 'links#ver2', as:"links_ver_2"

  get 'links/ver3/:id', to: 'links#ver3', as:"links_ver_3"

  get 'links/editaro/:id', to: 'links#editaro', as:"editar_opcion_links"

  put 'links/update/:id', to: 'links#updateo'

  patch 'links/update/:id', to: 'links#updateo'

  delete 'links/delete/:id', to: 'links#eliminaro', as:'eliminar_opcion_links'
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


  get 'egresados/casillai/:id', to: 'egresados#ecasilla', as:'editar_casilla_egresados'

  delete 'egresados/:id/ecasilla', to: 'egresados#eliminarc', as:'eliminar_casilla_egresados'

  get 'egresados/:id/editar', to: 'egresados#editar', as:'editar_egresados'

  put 'egresados/:id', to: 'egresados#update'

  patch 'egresados/:id', to: 'egresados#update'

  get 'egresados/new', to: 'egresados#new', as: 'new_egresados'

  get 'egresados/newc', to: 'egresados#newcasilla', as: 'egresados_casilla'

  post 'egresados/newc', to: 'egresados#createcasilla'

  post 'egresados/new', to: 'egresados#investigacioncreate'

  get 'egresados/editarc/:id', to: 'egresados#editarc', as:'editar_egresados_casilla'

  put 'egresados/actualizar/:id', to: 'egresados#updatec'

  patch 'egresados/actualizar/:id', to: 'egresados#updatec'

  get 'egresados/opci1', to: 'egresados#opcion1', as:'opcion1_egresados'

  get 'egresados/opci2', to: 'egresados#opcion2', as:'opcion2_egresados'

  get 'egresados/opci3', to: 'egresados#opcion3', as:'opcion3_egresados'

  get 'egresados/nuevoopcion', to: 'egresados#nuevaopcion', as:'egresados_nueva_opcion'

  get 'egresados/nuevoopcion2', to: 'egresados#nuevaopcion2', as:'egresados_nueva_opcion2'

  get 'egresados/nuevoopcion3', to: 'egresados#nuevaopcion3', as:'egresados_nueva_opcion3'

  post 'egresados/nuevacopcion', to: 'egresados#createopcion'

  get 'egresados/ver1/:id', to: 'egresados#ver1', as:"egresados_ver_1"

  get 'egresados/ver2/:id', to: 'egresados#ver2', as:"egresados_ver_2"

  get 'egresados/ver3/:id', to: 'egresados#ver3', as:"egresados_ver_3"

  get 'egresados/editaro/:id', to: 'egresados#editaro', as:"editar_opcion_egresados"

  put 'egresados/update/:id', to: 'egresados#updateo'

  patch 'egresados/update/:id', to: 'egresados#updateo'

  delete 'egresados/delete/:id', to: 'egresados#eliminaro', as:'eliminar_opcion_egresados'

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

  get 'organizacione/', to:'organizacione#index', as:'organizacione'

  get 'organizacione/new', to:'organizacione#new', as:'nuevo_funcionario'

  post 'organizacione/new', to:'organizacione#crear'

  get'organizacione/:id/editar', to:'organizacione#editar', as:'editar_funcionarioe'

  put 'organizacione/:id', to:'organizacione#update'


  patch 'organizacione/:id', to:'organizacione#update'

  delete 'organizacione/:id', to: 'organizacione#eliminare', as:'organizacione_eliminar'

  get 'organizacione/casillai/:id', to: 'organizacione#ecasilla', as:'editar_casilla_organizacione'

  delete 'organizacione/:id/ecasilla', to: 'organizacione#eliminarc', as:'eliminar_casilla_organizacione'

  get 'organizacione/:id/editar', to: 'organizacione#editar', as:'editar_organizacione'

  put 'organizacione/:id', to: 'organizacione#update'

  patch 'organizacione/:id', to: 'organizacione#update'

  get 'organizacione/new', to: 'organizacione#new', as: 'new_organizacione'

  get 'organizacione/newc', to: 'organizacione#newcasilla', as: 'organizacione_casilla'

  post 'organizacione/newc', to: 'organizacione#createcasilla'

  post 'organizacione/new', to: 'organizacione#investigacioncreate'

  get 'organizacione/editarc/:id', to: 'organizacione#editarc', as:'editar_organizacione_casilla'

  put 'organizacione/actualizar/:id', to: 'organizacione#updatec'

  patch 'organizacione/actualizar/:id', to: 'organizacione#updatec'

  get 'organizacione/opci1', to: 'organizacione#opcion1', as:'opcion1_organizacione'

  get 'organizacione/opci2', to: 'organizacione#opcion2', as:'opcion2_organizacione'

  get 'organizacione/opci3', to: 'organizacione#opcion3', as:'opcion3_organizacione'

  get 'organizacione/nuevoopcion', to: 'organizacione#nuevaopcion', as:'organizacione_nueva_opcion'

  get 'organizacione/nuevoopcion2', to: 'organizacione#nuevaopcion2', as:'organizacione_nueva_opcion2'

  get 'organizacione/nuevoopcion3', to: 'organizacione#nuevaopcion3', as:'organizacione_nueva_opcion3'

  post 'organizacione/nuevacopcion', to: 'organizacione#createopcion'

  get 'organizacione/ver1/:id', to: 'organizacione#ver1', as:"organizacione_ver_1"

  get 'organizacione/ver2/:id', to: 'organizacione#ver2', as:"organizacione_ver_2"

  get 'organizacione/ver3/:id', to: 'organizacione#ver3', as:"organizacione_ver_3"

  get 'organizacione/editaro/:id', to: 'organizacione#editaro', as:"editar_opcion_organizacione"

  put 'organizacione/update/:id', to: 'organizacione#updateo'

  patch 'organizacione/update/:id', to: 'organizacione#updateo'

  delete 'organizacione/eliminar/:id', to: 'organizacione#eliminaro', as:'eliminar_opcion_organizacione'


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


  get 'laboral/casillai/:id', to: 'laboral#ecasilla', as:'editar_casilla_laboral'

  delete 'laboral/:id/ecasilla', to: 'laboral#eliminarc', as:'eliminar_casilla_laboral'

  get 'laboral/:id/editar', to: 'laboral#editar', as:'editar_laboral'

  put 'laboral/:id', to: 'laboral#update'

  patch 'laboral/:id', to: 'laboral#update'

  get 'laboral/new', to: 'laboral#new', as: 'new_laboral'

  get 'laboral/newc', to: 'laboral#newcasilla', as: 'laboral_casilla'

  post 'laboral/newc', to: 'laboral#createcasilla'

  post 'laboral/new', to: 'laboral#investigacioncreate'

  get 'laboral/editarc/:id', to: 'laboral#editarc', as:'editar_laboral_casilla'

  put 'laboral/actualizar/:id', to: 'laboral#updatec'

  patch 'laboral/actualizar/:id', to: 'laboral#updatec'

  get 'laboral/opci1', to: 'laboral#opcion1', as:'opcion1_laboral'

  get 'laboral/opci2', to: 'laboral#opcion2', as:'opcion2_laboral'

  get 'laboral/opci3', to: 'laboral#opcion3', as:'opcion3_laboral'

  get 'laboral/nuevoopcion', to: 'laboral#nuevaopcion', as:'laboral_nueva_opcion'

  get 'laboral/nuevoopcion2', to: 'laboral#nuevaopcion2', as:'laboral_nueva_opcion2'

  get 'laboral/nuevoopcion3', to: 'laboral#nuevaopcion3', as:'laboral_nueva_opcion3'

  post 'laboral/nuevacopcion', to: 'laboral#createopcion'

  get 'laboral/ver1/:id', to: 'laboral#ver1', as:"laboral_ver_1"

  get 'laboral/ver2/:id', to: 'laboral#ver2', as:"laboral_ver_2"

  get 'laboral/ver3/:id', to: 'laboral#ver3', as:"laboral_ver_3"

  get 'laboral/editaro/:id', to: 'laboral#editaro', as:"editar_opcion_laboral"

  put 'laboral/update/:id', to: 'laboral#updateo'

  patch 'laboral/update/:id', to: 'laboral#updateo'

  delete 'laboral/delete/:id', to: 'laboral#eliminaro', as:'eliminar_opcion_laboral'

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


  get 'programas/casillai/:id', to: 'programas#ecasilla', as:'editar_casilla_programa'

  delete 'programas/:id/ecasilla', to: 'programas#eliminarc', as:'eliminar_casilla_programa'

  get 'programas/:id/editar', to: 'programas#editar', as:'editar_programa'

  put 'programas/:id', to: 'programas#update'

  patch 'programas/:id', to: 'programas#update'

  get 'programas/new', to: 'programas#new', as: 'new_programa'

  get 'programas/newc', to: 'programas#newcasilla', as: 'programa_casilla'

  post 'programas/newc', to: 'programas#createcasilla'

  post 'programas/new', to: 'programas#investigacioncreate'

  get 'programas/editarc/:id', to: 'programas#editarc', as:'editar_programa_casilla'

  put 'programas/actualizar/:id', to: 'programas#updatec'

  patch 'programas/actualizar/:id', to: 'programas#updatec'

  get 'programas/opci1', to: 'programas#opcion1', as:'opcion1_programa'

  get 'programas/opci2', to: 'programas#opcion2', as:'opcion2_programa'

  get 'programas/opci3', to: 'programas#opcion3', as:'opcion3_programa'

  get 'programas/nuevoopcion', to: 'programas#nuevaopcion', as:'programa_nueva_opcion'

  get 'programas/nuevoopcion2', to: 'programas#nuevaopcion2', as:'programa_nueva_opcion2'

  get 'programas/nuevoopcion3', to: 'programas#nuevaopcion3', as:'programa_nueva_opcion3'

  post 'programas/nuevacopcion', to: 'programas#createopcion'

  get 'programas/ver1/:id', to: 'programas#ver1', as:"programa_ver_1"

  get 'programas/ver2/:id', to: 'programas#ver2', as:"programa_ver_2"

  get 'programas/ver3/:id', to: 'programas#ver3', as:"programa_ver_3"

  get 'programas/editaro/:id', to: 'programas#editaro', as:"editar_opcion_programa"

  put 'programas/update/:id', to: 'programas#updateo'

  patch 'programas/update/:id', to: 'programas#updateo'

  delete 'programas/delete/:id', to: 'programas#eliminaro', as:'eliminar_opcion_programa'
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


  get 'estudiante/casillai/:id', to: 'estudiante#ecasilla', as:'editar_casilla_estudiante'

  delete 'estudiante/:id/ecasilla', to: 'estudiante#eliminarc', as:'eliminar_casilla_estudiante'

  get 'estudiante/:id/editar', to: 'estudiante#editar', as:'editar_estudiante'

  put 'estudiante/:id', to: 'estudiante#update'

  patch 'estudiante/:id', to: 'estudiante#update'

  get 'estudiante/new', to: 'estudiante#new', as: 'new_estudiante'

  get 'estudiante/newc', to: 'estudiante#newcasilla', as: 'estudiante_casilla'

  post 'estudiante/newc', to: 'estudiante#createcasilla'

  post 'estudiante/new', to: 'estudiante#investigacioncreate'

  get 'estudiante/editarc/:id', to: 'estudiante#editarc', as:'editar_estudiante_casilla'

  put 'estudiante/actualizar/:id', to: 'estudiante#updatec'

  patch 'estudiante/actualizar/:id', to: 'estudiante#updatec'

  get 'estudiante/opci1', to: 'estudiante#opcion1', as:'opcion1_estudiante'

  get 'estudiante/opci2', to: 'estudiante#opcion2', as:'opcion2_estudiante'

  get 'estudiante/opci3', to: 'estudiante#opcion3', as:'opcion3_estudiante'

  get 'estudiante/nuevoopcion', to: 'estudiante#nuevaopcion', as:'estudiante_nueva_opcion'

  get 'estudiante/nuevoopcion2', to: 'estudiante#nuevaopcion2', as:'estudiante_nueva_opcion2'

  get 'estudiante/nuevoopcion3', to: 'estudiante#nuevaopcion3', as:'estudiante_nueva_opcion3'

  post 'estudiante/nuevacopcion', to: 'estudiante#createopcion'

  get 'estudiante/ver1/:id', to: 'estudiante#ver1', as:"estudiante_ver_1"

  get 'estudiante/ver2/:id', to: 'estudiante#ver2', as:"estudiante_ver_2"

  get 'estudiante/ver3/:id', to: 'estudiante#ver3', as:"estudiante_ver_3"

  get 'estudiante/editaro/:id', to: 'estudiante#editaro', as:"editar_opcion_estudiante"

  put 'estudiante/update/:id', to: 'estudiante#updateo'

  patch 'estudiante/update/:id', to: 'estudiante#updateo'

  delete 'estudiante/delete/:id', to: 'estudiante#eliminaro', as:'eliminar_opcion_estudiante'

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



  get 'noticias/casillai/:id', to: 'noticias#ecasilla', as:'editar_casilla_noticias'

  delete 'noticias/:id/ecasilla', to: 'noticias#eliminarc', as:'eliminar_casilla_noticias'

  get 'noticias/:id/editar', to: 'noticias#editar', as:'editar_noticias'

  put 'noticias/:id', to: 'noticias#update'

  patch 'noticias/:id', to: 'noticias#update'

  get 'noticias/new', to: 'noticias#new', as: 'new_noticias'

  get 'noticias/newc', to: 'noticias#newcasilla', as: 'noticias_casilla'

  post 'noticias/newc', to: 'noticias#createcasilla'

  post 'noticias/new', to: 'noticias#investigacioncreate'

  get 'noticias/editarc/:id', to: 'noticias#editarc', as:'editar_noticias_casilla'

  put 'noticias/actualizar/:id', to: 'noticias#updatec'

  patch 'noticias/actualizar/:id', to: 'noticias#updatec'

  get 'noticias/opci1', to: 'noticias#opcion1', as:'opcion1_noticias'

  get 'noticias/opci2', to: 'noticias#opcion2', as:'opcion2_noticias'

  get 'noticias/opci3', to: 'noticias#opcion3', as:'opcion3_noticias'

  get 'noticias/nuevoopcion', to: 'noticias#nuevaopcion', as:'noticias_nueva_opcion'

  get 'noticias/nuevoopcion2', to: 'noticias#nuevaopcion2', as:'noticias_nueva_opcion2'

  get 'noticias/nuevoopcion3', to: 'noticias#nuevaopcion3', as:'noticias_nueva_opcion3'

  post 'noticias/nuevacopcion', to: 'noticias#createopcion'

  get 'noticias/ver1/:id', to: 'noticias#ver1', as:"noticias_ver_1"

  get 'noticias/ver2/:id', to: 'noticias#ver2', as:"noticias_ver_2"

  get 'noticias/ver3/:id', to: 'noticias#ver3', as:"noticias_ver_3"

  get 'noticias/editaro/:id', to: 'noticias#editaro', as:"editar_opcion_noticias"

  put 'noticias/update/:id', to: 'noticias#updateo'

  patch 'noticias/update/:id', to: 'noticias#updateo'

  delete 'noticias/delete/:id', to: 'noticias#eliminaro', as:'eliminar_opcion_noticias'

  #--------------------------------------------------------------------

  get 'inicioe/nuevotexto', to: 'inicioe#nuevotexto', as:'inicioe_nuevotexto'

  post 'inicioe/nuevotexto', to: 'inicioe#textocreate'

  get 'inicioe/eliminartexto'

  get 'inicioe/nuevopde'

  get 'inicioe/eliminarpde'

  get 'inicioe/editarinicio', to: 'inicioe#editarinicio', as: 'inicioe_editarinicio'

  put 'inicioe/editarinicio', to: 'inicioe#updateinicio'

  patch 'inicioe/editarinicio', to: 'inicioe#updateinicio'

  get 'inicioe/editarhistoria', to:'inicioe#editarhistoria', as: 'inicioe_editarhistoria'

  put 'inicioe/editarhistoria', to: 'inicioe#updatehistoria'

  patch 'inicioe/editarhistoria', to: 'inicioe#updatehistoria'

  get 'inicioe/editarmisionvision', to: 'inicioe#editarmisionvision', as: 'inicioe_editarmisionvision'

  put 'inicioe/editarmisionvision', to: 'inicioe#updatemisionvision'

  patch 'inicioe/editarmisionvision', to: 'inicioe#updatemisionvision'

  get 'inicioe/editarpde', to: 'inicioe#editarpde', as: 'inicioe_editarpde'

  put 'inicioe/editarpde', to: 'inicioe#updatepde'

  patch 'inicioe/editarpde', to: 'inicioe#updatepde'

  get 'inicioe/index'

  get 'inicioe/mostrar'

  get 'inicioe/eliminar'

  get 'inicioe/update'

  get 'inicioe/nuevo'

  get 'inicioe/crear'

  get 'inicioe/editar'

  get 'inicioe/pde', to: 'inicioe#pde', as: 'inicioe_pde'

  get 'inicioe/inicio', to: 'inicioe#inicio', as: 'inicioe_inicio'

  get 'inicioe/historia', to: 'inicioe#historia', as: 'inicioe_historia'

  get 'inicioe/misionvision', to: 'inicioe#misionvision', as: 'inicioe_misionvision'

  get 'inicioe/:id/casilla', to: 'inicioe#ecasilla', as:'editar_casilla_esc'

  delete 'inicioe/:id/casilla', to: 'inicioe#eliminarc', as:'eliminar_esc'

  get 'inicioe/:id/editar', to: 'inicioe#editar', as:'editar_esc_casilla'

  put 'inicioe/:id', to: 'inicioe#update'

  patch 'inicioe/:id', to: 'inicioe#update'

  get 'inicioe/newc', to: 'inicioe#nuevacasilla', as: 'esc_casilla'

  post 'inicioe/newc', to: 'inicioe#createcasilla'

  get 'inicioe/opci1', to: 'inicioe#opcion1', as:'opcion1_esc'

  get 'inicioe/opci2', to: 'inicioe#opcion2', as:'opcion2_esc'

  get 'inicioe/opci3', to: 'inicioe#opcion3', as:'opcion3_esc'

  get 'inicioe/nuevoopcion', to: 'inicioe#nuevaopcion', as:'inicioe_nueva_opcion'

  get 'inicioe/nuevoopcion2', to: 'inicioe#nuevaopcion2', as:'inicioe_nueva_opcion2'

  get 'inicioe/nuevoopcion3', to: 'inicioe#nuevaopcion3', as:'inicioe_nueva_opcion3'

  post 'inicioe/nuevacopcion', to: 'inicioe#createopcion'

  get 'inicioe/ver1/:id', to: 'inicioe#ver1', as:"ver_1esc"

  get 'inicioe/ver2/:id', to: 'inicioe#ver2', as:"ver_2esc"

  get 'inicioe/ver3/:id', to: 'inicioe#ver3', as:"ver_3esc"

  get 'inicioe/editaro/:id', to: 'inicioe#editaro', as:"editar_opcion_esc"

  put 'inicioe/update/:id', to: 'inicioe#updateo'

  patch 'inicioe/update/:id', to: 'inicioe#updateo'

  delete 'inicioe/eliminar/:id', to: 'inicioe#eliminaro', as:'eliminar_opcion_esc'

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

  get 'organizacion/casillai/:id', to: 'organizacion#ecasilla', as:'editar_casilla_organizacion'

  delete 'organizacion/:id/ecasilla', to: 'organizacion#eliminarc', as:'eliminar_casilla_organizacion'

  get 'organizacion/:id/editar', to: 'organizacion#editar', as:'editar_organizacion'

  put 'organizacion/:id', to: 'organizacion#update'

  patch 'organizacion/:id', to: 'organizacion#update'

  get 'organizacion/new', to: 'organizacion#new', as: 'new_organizacion'

  get 'organizacion/newc', to: 'organizacion#newcasilla', as: 'organizacion_casilla'

  post 'organizacion/newc', to: 'organizacion#createcasilla'

  post 'organizacion/new', to: 'organizacion#investigacioncreate'

  get 'organizacion/editarc/:id', to: 'organizacion#editarc', as:'editar_organizacion_casilla'

  put 'organizacion/actualizar/:id', to: 'organizacion#updatec'

  patch 'organizacion/actualizar/:id', to: 'organizacion#updatec'

  get 'organizacion/opci1', to: 'organizacion#opcion1', as:'opcion1_organizacion'

  get 'organizacion/opci2', to: 'organizacion#opcion2', as:'opcion2_organizacion'

  get 'organizacion/opci3', to: 'organizacion#opcion3', as:'opcion3_organizacion'

  get 'organizacion/nuevoopcion', to: 'organizacion#nuevaopcion', as:'organizacion_nueva_opcion'

  get 'organizacion/nuevoopcion2', to: 'organizacion#nuevaopcion2', as:'organizacion_nueva_opcion2'

  get 'organizacion/nuevoopcion3', to: 'organizacion#nuevaopcion3', as:'organizacion_nueva_opcion3'

  post 'organizacion/nuevacopcion', to: 'organizacion#createopcion'

  get 'organizacion/ver1/:id', to: 'organizacion#ver1', as:"organizacion_ver_1"

  get 'organizacion/ver2/:id', to: 'organizacion#ver2', as:"organizacion_ver_2"

  get 'organizacion/ver3/:id', to: 'organizacion#ver3', as:"organizacion_ver_3"

  get 'organizacion/editaro/:id', to: 'organizacion#editaro', as:"editar_opcion_organizacion"

  put 'organizacion/update/:id', to: 'organizacion#updateo'

  patch 'organizacion/update/:id', to: 'organizacion#updateo'

  delete 'organizacion/eliminar/:id', to: 'organizacion#eliminaro', as:'eliminar_opcion_organizacion'

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

  get 'investigacion/casillai/:id', to: 'investigacion#ecasilla', as:'editar_casilla_investigacion'

  delete 'investigacion/:id/ecasilla', to: 'investigacion#eliminarc', as:'eliminar_casilla_investigacion'

  get 'investigacion/:id/editar', to: 'investigacion#editar', as:'editar_investigacion'

  put 'investigacion/:id', to: 'investigacion#update'

  patch 'investigacion/:id', to: 'investigacion#update'

  get 'investigacion/new', to: 'investigacion#new', as: 'new_investigacion'

  get 'investigacion/newc', to: 'investigacion#newcasilla', as: 'investigacion_casilla'

  post 'investigacion/newc', to: 'investigacion#createcasilla'

  post 'investigacion/new', to: 'investigacion#investigacioncreate'

  get 'investigacion/editarc/:id', to: 'investigacion#editarc', as:'editar_investigacion_casilla'

  put 'investigacion/actualizar/:id', to: 'investigacion#updatec'

  patch 'investigacion/actualizar/:id', to: 'investigacion#updatec'

  delete 'investigacion/:id', to: 'investigacion#eliminar', as:'eliminar_investigacion'

  get 'investigacion/opci1', to: 'investigacion#opcion1', as:'opcion1_investigacion'

  get 'investigacion/opci2', to: 'investigacion#opcion2', as:'opcion2_investigacion'

  get 'investigacion/opci3', to: 'investigacion#opcion3', as:'opcion3_investigacion'

  get 'investigacion/nuevoopcion', to: 'investigacion#nuevaopcion', as:'investigacion_nueva_opcion'

  get 'investigacion/nuevoopcion2', to: 'investigacion#nuevaopcion2', as:'investigacion_nueva_opcion2'

  get 'investigacion/nuevoopcion3', to: 'investigacion#nuevaopcion3', as:'investigacion_nueva_opcion3'

  post 'investigacion/nuevacopcion', to: 'investigacion#createopcion'

  get 'investigacion/ver1/:id', to: 'investigacion#ver1', as:"investigacion_ver_1"

  get 'investigacion/ver2/:id', to: 'investigacion#ver2', as:"investigacion_ver_2"

  get 'investigacion/ver3/:id', to: 'investigacion#ver3', as:"investigacion_ver_3"

  get 'investigacion/editaro/:id', to: 'investigacion#editaro', as:"editar_opcion_investigacion"

  put 'investigacion/update/:id', to: 'investigacion#updateo'

  patch 'investigacion/update/:id', to: 'investigacion#updateo'

  delete 'investigacion/eliminar/:id', to: 'investigacion#eliminaro', as:'eliminar_opcion_investigacion'

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

  delete 'academico/eliminar/:id', to: 'academico#eliminarc', as:'eliminar_casilla'

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

  delete 'academico/delete/:id', to: 'academico#eliminaro', as:'eliminar_opcion_academico'

  #Falta toda escual y contacto...
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
