require 'test_helper'

class LaboralControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get laboral_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get laboral_mostrar_url
    assert_response :success
  end

end
