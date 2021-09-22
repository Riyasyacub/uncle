require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get details" do
    get pages_details_url
    assert_response :success
  end

  test "should get print" do
    get pages_print_url
    assert_response :success
  end
end
