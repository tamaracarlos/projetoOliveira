require 'test_helper'

class DvrsControllerTest < ActionController::TestCase
  setup do
    @dvr = dvrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dvrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dvr" do
    assert_difference('Dvr.count') do
      post :create, dvr: { cameras: @dvr.cameras, canais: @dvr.canais, entradas: @dvr.entradas, modelo: @dvr.modelo, saidas: @dvr.saidas }
    end

    assert_redirected_to dvr_path(assigns(:dvr))
  end

  test "should show dvr" do
    get :show, id: @dvr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dvr
    assert_response :success
  end

  test "should update dvr" do
    patch :update, id: @dvr, dvr: { cameras: @dvr.cameras, canais: @dvr.canais, entradas: @dvr.entradas, modelo: @dvr.modelo, saidas: @dvr.saidas }
    assert_redirected_to dvr_path(assigns(:dvr))
  end

  test "should destroy dvr" do
    assert_difference('Dvr.count', -1) do
      delete :destroy, id: @dvr
    end

    assert_redirected_to dvrs_path
  end
end
