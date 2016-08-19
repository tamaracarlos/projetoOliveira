require 'test_helper'

class ControlpsControllerTest < ActionController::TestCase
  setup do
    @controlp = controlps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controlps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controlp" do
    assert_difference('Controlp.count') do
      post :create, controlp: { horarioArmeDesarme: @controlp.horarioArmeDesarme, horarioInterfone: @controlp.horarioInterfone, tempoArmeAutomatico: @controlp.tempoArmeAutomatico }
    end

    assert_redirected_to controlp_path(assigns(:controlp))
  end

  test "should show controlp" do
    get :show, id: @controlp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controlp
    assert_response :success
  end

  test "should update controlp" do
    patch :update, id: @controlp, controlp: { horarioArmeDesarme: @controlp.horarioArmeDesarme, horarioInterfone: @controlp.horarioInterfone, tempoArmeAutomatico: @controlp.tempoArmeAutomatico }
    assert_redirected_to controlp_path(assigns(:controlp))
  end

  test "should destroy controlp" do
    assert_difference('Controlp.count', -1) do
      delete :destroy, id: @controlp
    end

    assert_redirected_to controlps_path
  end
end