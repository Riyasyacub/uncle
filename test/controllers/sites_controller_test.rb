require "test_helper"

class SitesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get sites_home_url
    assert_response :success
  end

  test "should get contact" do
    get sites_contact_url
    assert_response :success
  end

  test "should get services" do
    get sites_services_url
    assert_response :success
  end

  test "should get news" do
    get sites_news_url
    assert_response :success
  end
end
