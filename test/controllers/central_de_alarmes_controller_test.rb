require 'test_helper'

class CentralDeAlarmesControllerTest < ActionController::TestCase
  setup do
    @central_de_alarme = central_de_alarmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:central_de_alarmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create central_de_alarme" do
    assert_difference('CentralDeAlarme.count') do
      post :create, central_de_alarme: { modelo: @central_de_alarme.modelo }
    end

    assert_redirected_to central_de_alarme_path(assigns(:central_de_alarme))
  end

  test "should show central_de_alarme" do
    get :show, id: @central_de_alarme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @central_de_alarme
    assert_response :success
  end

  test "should update central_de_alarme" do
    patch :update, id: @central_de_alarme, central_de_alarme: { modelo: @central_de_alarme.modelo }
    assert_redirected_to central_de_alarme_path(assigns(:central_de_alarme))
  end

  test "should destroy central_de_alarme" do
    assert_difference('CentralDeAlarme.count', -1) do
      delete :destroy, id: @central_de_alarme
    end

    assert_redirected_to central_de_alarmes_path
  end
end
