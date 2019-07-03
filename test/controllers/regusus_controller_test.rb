require 'test_helper'

class RegususControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regusu = regusus(:one)
  end

  test "should get index" do
    get regusus_url
    assert_response :success
  end

  test "should get new" do
    get new_regusu_url
    assert_response :success
  end

  test "should create regusu" do
    assert_difference('Regusu.count') do
      post regusus_url, params: { regusu: { apellido: @regusu.apellido, contraseÇña: @regusu.contraseÇña, dni: @regusu.dni, email: @regusu.email, nombre: @regusu.nombre, telefono: @regusu.telefono } }
    end

    assert_redirected_to regusu_url(Regusu.last)
  end

  test "should show regusu" do
    get regusu_url(@regusu)
    assert_response :success
  end

  test "should get edit" do
    get edit_regusu_url(@regusu)
    assert_response :success
  end

  test "should update regusu" do
    patch regusu_url(@regusu), params: { regusu: { apellido: @regusu.apellido, contraseÇña: @regusu.contraseÇña, dni: @regusu.dni, email: @regusu.email, nombre: @regusu.nombre, telefono: @regusu.telefono } }
    assert_redirected_to regusu_url(@regusu)
  end

  test "should destroy regusu" do
    assert_difference('Regusu.count', -1) do
      delete regusu_url(@regusu)
    end

    assert_redirected_to regusus_url
  end
end
