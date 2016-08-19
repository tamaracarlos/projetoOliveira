require 'test_helper'

class SensoresControllerTest < ActionController::TestCase
  setup do
    @sensore = sensores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensore" do
    assert_difference('Sensore.count') do
      post :create, sensore: { localizacao: @sensore.localizacao, marcas: @sensore.marcas, modelos: @sensore.modelos, quantidade: @sensore.quantidade }
    end

    assert_redirected_to sensore_path(assigns(:sensore))
  end

  test "should show sensore" do
    get :show, id: @sensore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensore
    assert_response :success
  end

  test "should update sensore" do
    patch :update, id: @sensore, sensore: { localizacao: @sensore.localizacao, marcas: @sensore.marcas, modelos: @sensore.modelos, quantidade: @sensore.quantidade }
    assert_redirected_to sensore_path(assigns(:sensore))
  end

  test "should destroy sensore" do
    assert_difference('Sensore.count', -1) do
      delete :destroy, id: @sensore
    end

    assert_redirected_to sensores_path
  end
end
