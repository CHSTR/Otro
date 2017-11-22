require 'test_helper'

class ContactodControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contactod_index_url
    assert_response :success
  end

end
