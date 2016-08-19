require 'test_helper'

class HdsControllerTest < ActionController::TestCase
  setup do
    @hd = hds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hd" do
    assert_difference('Hd.count') do
      post :create, hd: { capacidade: @hd.capacidade, tempo_de_gravacao: @hd.tempo_de_gravacao }
    end

    assert_redirected_to hd_path(assigns(:hd))
  end

  test "should show hd" do
    get :show, id: @hd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hd
    assert_response :success
  end

  test "should update hd" do
    patch :update, id: @hd, hd: { capacidade: @hd.capacidade, tempo_de_gravacao: @hd.tempo_de_gravacao }
    assert_redirected_to hd_path(assigns(:hd))
  end

  test "should destroy hd" do
    assert_difference('Hd.count', -1) do
      delete :destroy, id: @hd
    end

    assert_redirected_to hds_path
  end
end
