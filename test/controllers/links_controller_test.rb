require 'test_helper'

class LinksControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get links_inicio_url
    assert_response :success
  end

  test "should get editar" do
    get links_editar_url
    assert_response :success
  end

  test "should get nuevo" do
    get links_nuevo_url
    assert_response :success
  end

  test "should get eliminar" do
    get links_eliminar_url
    assert_response :success
  end

  test "should get mostrar" do
    get links_mostrar_url
    assert_response :success
  end

end
