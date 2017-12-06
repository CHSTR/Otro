require 'test_helper'

class EgresadosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get egresados_index_url
    assert_response :success
  end

  test "should get tituygradua" do
    get egresados_tituygradua_url
    assert_response :success
  end

  test "should get egredesta" do
    get egresados_egredesta_url
    assert_response :success
  end

end
