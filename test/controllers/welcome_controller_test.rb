require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get bikes" do
    get welcome_bikes_url
    assert_response :success
  end

  test "should get gear" do
    get welcome_gear_url
    assert_response :success
  end

  test "should get services" do
    get welcome_services_url
    assert_response :success
  end
end
