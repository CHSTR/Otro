require 'test_helper'

class OrganizacionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get organizacion_index_url
    assert_response :success
  end

  test "should get new" do
    get organizacion_new_url
    assert_response :success
  end

  test "should get delete" do
    get organizacion_delete_url
    assert_response :success
  end

  test "should get update" do
    get organizacion_update_url
    assert_response :success
  end

  test "should get editar" do
    get organizacion_editar_url
    assert_response :success
  end

end
