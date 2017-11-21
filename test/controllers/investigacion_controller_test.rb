require 'test_helper'

class InvestigacionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get investigacion_index_url
    assert_response :success
  end

end
