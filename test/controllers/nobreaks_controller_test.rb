require 'test_helper'

class NobreaksControllerTest < ActionController::TestCase
  setup do
    @nobreak = nobreaks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nobreaks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nobreak" do
    assert_difference('Nobreak.count') do
      post :create, nobreak: { capacidade: @nobreak.capacidade }
    end

    assert_redirected_to nobreak_path(assigns(:nobreak))
  end

  test "should show nobreak" do
    get :show, id: @nobreak
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nobreak
    assert_response :success
  end

  test "should update nobreak" do
    patch :update, id: @nobreak, nobreak: { capacidade: @nobreak.capacidade }
    assert_redirected_to nobreak_path(assigns(:nobreak))
  end

  test "should destroy nobreak" do
    assert_difference('Nobreak.count', -1) do
      delete :destroy, id: @nobreak
    end

    assert_redirected_to nobreaks_path
  end
end
