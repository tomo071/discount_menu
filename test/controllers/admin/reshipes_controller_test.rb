require "test_helper"

class Admin::ReshipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_reshipes_index_url
    assert_response :success
  end
end
