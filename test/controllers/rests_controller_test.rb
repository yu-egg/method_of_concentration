require 'test_helper'

class RestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rests_index_url
    assert_response :success
  end

end
