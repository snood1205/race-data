require "test_helper"

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teams_index_url
    assert_response :success
  end

  test "should get show" do
    get teams_show_url
    assert_response :success
  end

  test "should get create" do
    get teams_create_url
    assert_response :success
  end

  test "should get drivers" do
    get teams_drivers_url
    assert_response :success
  end
end
