require "test_helper"

class User::StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_stores_index_url
    assert_response :success
  end

  test "should get show" do
    get user_stores_show_url
    assert_response :success
  end
end
