require "test_helper"

class FivechControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fivech_index_url
    assert_response :success
  end
end
