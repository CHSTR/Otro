require 'test_helper'

class AceptarOfertaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aceptar_oferta_index_url
    assert_response :success
  end

  test "should get eliminar" do
    get aceptar_oferta_eliminar_url
    assert_response :success
  end

  test "should get mostrar" do
    get aceptar_oferta_mostrar_url
    assert_response :success
  end

end
