require 'test_helper'

class AthletesControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get athletes_update_url
    assert_response :success
  end

end
