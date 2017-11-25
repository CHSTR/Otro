require 'test_helper'

class PortalControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get portal_inicio_url
    assert_response :success
  end

  test "should get nuevo" do
    get portal_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get portal_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get portal_eliminar_url
    assert_response :success
  end

end
