require 'test_helper'

class AcademicoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get academico_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get academico_mostrar_url
    assert_response :success
  end

  test "should get eliminar" do
    get academico_eliminar_url
    assert_response :success
  end

  test "should get update" do
    get academico_update_url
    assert_response :success
  end

  test "should get nuevo" do
    get academico_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get academico_crear_url
    assert_response :success
  end

  test "should get editar" do
    get academico_editar_url
    assert_response :success
  end

end
