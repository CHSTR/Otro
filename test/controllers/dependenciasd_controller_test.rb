require 'test_helper'

class DependenciasdControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get dependenciasd_inicio_url
    assert_response :success
  end

  test "should get nuevo" do
    get dependenciasd_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get dependenciasd_editar_url
    assert_response :success
  end

  test "should get mostrar" do
    get dependenciasd_mostrar_url
    assert_response :success
  end

  test "should get eliminar" do
    get dependenciasd_eliminar_url
    assert_response :success
  end

end
