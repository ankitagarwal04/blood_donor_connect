require 'test_helper'

class LocationSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get compare_distance" do
    get location_search_compare_distance_url
    assert_response :success
  end

end
