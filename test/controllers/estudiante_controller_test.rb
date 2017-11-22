require 'test_helper'

class EstudianteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get estudiante_index_url
    assert_response :success
  end

  test "should get crear" do
    get estudiante_crear_url
    assert_response :success
  end

  test "should get editar" do
    get estudiante_editar_url
    assert_response :success
  end

  test "should get actualizar" do
    get estudiante_actualizar_url
    assert_response :success
  end

  test "should get eliminar" do
    get estudiante_eliminar_url
    assert_response :success
  end

end
