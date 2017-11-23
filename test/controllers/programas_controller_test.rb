require 'test_helper'

class ProgramasControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get programas_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get programas_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get programas_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get programas_eliminar_url
    assert_response :success
  end

  test "should get nuevo" do
    get programas_nuevo_url
    assert_response :success
  end

  test "should get buscar" do
    get programas_buscar_url
    assert_response :success
  end

  test "should get pregrado" do
    get programas_pregrado_url
    assert_response :success
  end

  test "should get postgrado" do
    get programas_postgrado_url
    assert_response :success
  end

  test "should get otros" do
    get programas_otros_url
    assert_response :success
  end

end
