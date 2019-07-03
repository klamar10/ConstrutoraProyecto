require 'test_helper'

class MantenisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manteni = mantenis(:one)
  end

  test "should get index" do
    get mantenis_url
    assert_response :success
  end

  test "should get new" do
    get new_manteni_url
    assert_response :success
  end

  test "should create manteni" do
    assert_difference('Manteni.count') do
      post mantenis_url, params: { manteni: { areacomun: @manteni.areacomun, caracteristicas: @manteni.caracteristicas, nombre: @manteni.nombre, pisos: @manteni.pisos, ubicacion: @manteni.ubicacion } }
    end

    assert_redirected_to manteni_url(Manteni.last)
  end

  test "should show manteni" do
    get manteni_url(@manteni)
    assert_response :success
  end

  test "should get edit" do
    get edit_manteni_url(@manteni)
    assert_response :success
  end

  test "should update manteni" do
    patch manteni_url(@manteni), params: { manteni: { areacomun: @manteni.areacomun, caracteristicas: @manteni.caracteristicas, nombre: @manteni.nombre, pisos: @manteni.pisos, ubicacion: @manteni.ubicacion } }
    assert_redirected_to manteni_url(@manteni)
  end

  test "should destroy manteni" do
    assert_difference('Manteni.count', -1) do
      delete manteni_url(@manteni)
    end

    assert_redirected_to mantenis_url
  end
end
