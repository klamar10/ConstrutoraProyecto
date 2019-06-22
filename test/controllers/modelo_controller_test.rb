require 'test_helper'

class ModeloControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get modelo_index_url
    assert_response :success
  end

end
