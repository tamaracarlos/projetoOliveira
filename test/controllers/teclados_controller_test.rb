require 'test_helper'

class TecladosControllerTest < ActionController::TestCase
  setup do
    @teclado = teclados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teclados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teclado" do
    assert_difference('Teclado.count') do
      post :create, teclado: { quantidade: @teclado.quantidade, tipo: @teclado.tipo }
    end

    assert_redirected_to teclado_path(assigns(:teclado))
  end

  test "should show teclado" do
    get :show, id: @teclado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teclado
    assert_response :success
  end

  test "should update teclado" do
    patch :update, id: @teclado, teclado: { quantidade: @teclado.quantidade, tipo: @teclado.tipo }
    assert_redirected_to teclado_path(assigns(:teclado))
  end

  test "should destroy teclado" do
    assert_difference('Teclado.count', -1) do
      delete :destroy, id: @teclado
    end

    assert_redirected_to teclados_path
  end
end
