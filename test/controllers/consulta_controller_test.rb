require 'test_helper'

class ConsultaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consulta_index_url
    assert_response :success
  end

  test "should get crear" do
    get consulta_crear_url
    assert_response :success
  end

  test "should get editar" do
    get consulta_editar_url
    assert_response :success
  end

end
