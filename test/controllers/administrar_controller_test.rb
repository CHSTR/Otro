require 'test_helper'

class AdministrarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrar_index_url
    assert_response :success
  end

  test "should get editar" do
    get administrar_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get administrar_eliminar_url
    assert_response :success
  end

end
