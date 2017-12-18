require 'test_helper'

class DependenciaseControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get dependenciase_inicio_url
    assert_response :success
  end

  test "should get nuevo" do
    get dependenciase_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get dependenciase_editar_url
    assert_response :success
  end

  test "should get mostrar" do
    get dependenciase_mostrar_url
    assert_response :success
  end

  test "should get eliminar" do
    get dependenciase_eliminar_url
    assert_response :success
  end

end
