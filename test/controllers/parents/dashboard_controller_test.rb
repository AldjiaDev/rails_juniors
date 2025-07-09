require "test_helper"

class Parents::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parents_dashboard_index_url
    assert_response :success
  end
end
