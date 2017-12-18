require 'test_helper'

class DependenciasControllerTest < ActionDispatch::IntegrationTest
  test "should get nuevo" do
    get dependencias_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get dependencias_editar_url
    assert_response :success
  end

  test "should get inicio" do
    get dependencias_inicio_url
    assert_response :success
  end

  test "should get eliminar" do
    get dependencias_eliminar_url
    assert_response :success
  end

  test "should get mostrar" do
    get dependencias_mostrar_url
    assert_response :success
  end

end
