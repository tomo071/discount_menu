require "test_helper"

class Store::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_genres_index_url
    assert_response :success
  end

  test "should get edit" do
    get store_genres_edit_url
    assert_response :success
  end
end
