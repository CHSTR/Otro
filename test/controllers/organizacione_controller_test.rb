require 'test_helper'

class OrganizacioneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get organizacione_index_url
    assert_response :success
  end

  test "should get eliminar" do
    get organizacione_eliminar_url
    assert_response :success
  end

  test "should get editar" do
    get organizacione_editar_url
    assert_response :success
  end

  test "should get update}" do
    get organizacione_update}_url
    assert_response :success
  end

end
