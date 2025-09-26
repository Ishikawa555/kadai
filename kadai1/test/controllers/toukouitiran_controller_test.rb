require "test_helper"

class ToukouitiranControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get toukouitiran_top_url
    assert_response :success
  end
end
