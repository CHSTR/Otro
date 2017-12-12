require 'test_helper'

class LinkeControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get linke_inicio_url
    assert_response :success
  end

  test "should get editar" do
    get linke_editar_url
    assert_response :success
  end

  test "should get nuevo" do
    get linke_nuevo_url
    assert_response :success
  end

  test "should get eliminar" do
    get linke_eliminar_url
    assert_response :success
  end

  test "should get mostrar" do
    get linke_mostrar_url
    assert_response :success
  end

end
