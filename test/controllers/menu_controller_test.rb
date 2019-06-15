require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get menu_inicio_url
    assert_response :success
  end

end
