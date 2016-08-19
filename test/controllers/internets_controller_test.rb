require 'test_helper'

class InternetsControllerTest < ActionController::TestCase
  setup do
    @internet = internets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internet" do
    assert_difference('Internet.count') do
      post :create, internet: { banda: @internet.banda, cnpj: @internet.cnpj, contrato: @internet.contrato }
    end

    assert_redirected_to internet_path(assigns(:internet))
  end

  test "should show internet" do
    get :show, id: @internet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @internet
    assert_response :success
  end

  test "should update internet" do
    patch :update, id: @internet, internet: { banda: @internet.banda, cnpj: @internet.cnpj, contrato: @internet.contrato }
    assert_redirected_to internet_path(assigns(:internet))
  end

  test "should destroy internet" do
    assert_difference('Internet.count', -1) do
      delete :destroy, id: @internet
    end

    assert_redirected_to internets_path
  end
end
