require "test_helper"

class User::ReshipesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_reshipes_new_url
    assert_response :success
  end

  test "should get index" do
    get user_reshipes_index_url
    assert_response :success
  end

  test "should get show" do
    get user_reshipes_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_reshipes_edit_url
    assert_response :success
  end
end
