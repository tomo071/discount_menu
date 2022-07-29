require "test_helper"

class User::MaterialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_material_index_url
    assert_response :success
  end
end
