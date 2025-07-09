require "test_helper"

class Kids::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kids_dashboard_index_url
    assert_response :success
  end
end
