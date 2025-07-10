require "test_helper"

class Parents::KidsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parents_kids_index_url
    assert_response :success
  end

  test "should get new" do
    get parents_kids_new_url
    assert_response :success
  end

  test "should get create" do
    get parents_kids_create_url
    assert_response :success
  end
end
