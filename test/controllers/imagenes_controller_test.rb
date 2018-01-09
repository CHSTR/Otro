require 'test_helper'

class ImagenesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get imagenes_inicio_url
    assert_response :success
  end

  test "should get nuevo" do
    get imagenes_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get imagenes_editar_url
    assert_response :success
  end

  test "should get mostrar" do
    get imagenes_mostrar_url
    assert_response :success
  end

  test "should get eliminar" do
    get imagenes_eliminar_url
    assert_response :success
  end

end
