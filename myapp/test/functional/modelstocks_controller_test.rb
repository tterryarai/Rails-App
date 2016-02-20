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
      post :create, modelstock: { description: @modelstock.description, name: @modelstock.name, publisher: @modelstock.publisher, realm_id: @modelstock.realm_id, scale_id: @modelstock.scale_id, series_id: @modelstock.series_id, status_id: @modelstock.status_id }
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
    put :update, id: @modelstock, modelstock: { description: @modelstock.description, name: @modelstock.name, publisher: @modelstock.publisher, realm_id: @modelstock.realm_id, scale_id: @modelstock.scale_id, series_id: @modelstock.series_id, status_id: @modelstock.status_id }
    assert_redirected_to modelstock_path(assigns(:modelstock))
  end

  test "should destroy modelstock" do
    assert_difference('Modelstock.count', -1) do
      delete :destroy, id: @modelstock
    end

    assert_redirected_to modelstocks_path
  end
end
