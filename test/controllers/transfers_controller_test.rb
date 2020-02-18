require 'test_helper'

class TransfersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transfers_index_url
    assert_response :success
  end

end
