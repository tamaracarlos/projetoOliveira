require 'test_helper'

class SindicosControllerTest < ActionController::TestCase
  setup do
    @sindico = sindicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sindicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sindico" do
    assert_difference('Sindico.count') do
      post :create, sindico: { nome: @sindico.nome, telefone: @sindico.telefone }
    end

    assert_redirected_to sindico_path(assigns(:sindico))
  end

  test "should show sindico" do
    get :show, id: @sindico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sindico
    assert_response :success
  end

  test "should update sindico" do
    patch :update, id: @sindico, sindico: { nome: @sindico.nome, telefone: @sindico.telefone }
    assert_redirected_to sindico_path(assigns(:sindico))
  end

  test "should destroy sindico" do
    assert_difference('Sindico.count', -1) do
      delete :destroy, id: @sindico
    end

    assert_redirected_to sindicos_path
  end
end
