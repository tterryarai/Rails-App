require 'test_helper'

class ModelstocksControllerTest < ActionController::TestCase
  setup do
    @modelstock = modelstocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modelstocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modelstock" do
    assert_difference('Modelstock.count') do
      post :create, modelstock: { description: @modelstock.description, group1: @modelstock.group1, group2: @modelstock.group2, name: @modelstock.name, provider: @modelstock.provider, scale: @modelstock.scale, status: @modelstock.status }
    end

    assert_redirected_to modelstock_path(assigns(:modelstock))
  end

  test "should show modelstock" do
    get :show, id: @modelstock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modelstock
    assert_response :success
  end

  test "should update modelstock" do
    patch :update, id: @modelstock, modelstock: { description: @modelstock.description, group1: @modelstock.group1, group2: @modelstock.group2, name: @modelstock.name, provider: @modelstock.provider, scale: @modelstock.scale, status: @modelstock.status }
    assert_redirected_to modelstock_path(assigns(:modelstock))
  end

  test "should destroy modelstock" do
    assert_difference('Modelstock.count', -1) do
      delete :destroy, id: @modelstock
    end

    assert_redirected_to modelstocks_path
  end
end
