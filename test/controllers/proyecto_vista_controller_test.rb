require 'test_helper'

class ProyectoVistaControllerTest < ActionDispatch::IntegrationTest
  test "should get proyecto" do
    get proyecto_vista_proyecto_url
    assert_response :success
  end

end
