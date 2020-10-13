require 'test_helper'

class OutputsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outputs_index_url
    assert_response :success
  end

end
