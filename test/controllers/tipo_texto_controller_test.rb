require 'test_helper'

class TipoTextoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tipo_texto_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get tipo_texto_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get tipo_texto_editar_url
    assert_response :success
  end

  test "should get new" do
    get tipo_texto_new_url
    assert_response :success
  end

  test "should get create" do
    get tipo_texto_create_url
    assert_response :success
  end

  test "should get update" do
    get tipo_texto_update_url
    assert_response :success
  end

end
