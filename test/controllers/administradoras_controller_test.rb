require 'test_helper'

class AdministradorasControllerTest < ActionController::TestCase
  setup do
    @administradora = administradoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administradoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administradora" do
    assert_difference('Administradora.count') do
      post :create, administradora: { nome: @administradora.nome, telefone: @administradora.telefone }
    end

    assert_redirected_to administradora_path(assigns(:administradora))
  end

  test "should show administradora" do
    get :show, id: @administradora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administradora
    assert_response :success
  end

  test "should update administradora" do
    patch :update, id: @administradora, administradora: { nome: @administradora.nome, telefone: @administradora.telefone }
    assert_redirected_to administradora_path(assigns(:administradora))
  end

  test "should destroy administradora" do
    assert_difference('Administradora.count', -1) do
      delete :destroy, id: @administradora
    end

    assert_redirected_to administradoras_path
  end
end
