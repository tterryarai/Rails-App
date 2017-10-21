require 'test_helper'

class StampsControllerTest < ActionController::TestCase
  setup do
    @stamp = stamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stamp" do
    assert_difference('Stamp.count') do
      post :create, stamp: { area: @stamp.area, description: @stamp.description, group1: @stamp.group1, group2: @stamp.group2, group3: @stamp.group3, image_path: @stamp.image_path, issue_date: @stamp.issue_date, leaf_id: @stamp.leaf_id, name: @stamp.name, price: @stamp.price, remark1: @stamp.remark1, remark2: @stamp.remark2, remark3: @stamp.remark3, status: @stamp.status }
    end

    assert_redirected_to stamp_path(assigns(:stamp))
  end

  test "should show stamp" do
    get :show, id: @stamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stamp
    assert_response :success
  end

  test "should update stamp" do
    patch :update, id: @stamp, stamp: { area: @stamp.area, description: @stamp.description, group1: @stamp.group1, group2: @stamp.group2, group3: @stamp.group3, image_path: @stamp.image_path, issue_date: @stamp.issue_date, leaf_id: @stamp.leaf_id, name: @stamp.name, price: @stamp.price, remark1: @stamp.remark1, remark2: @stamp.remark2, remark3: @stamp.remark3, status: @stamp.status }
    assert_redirected_to stamp_path(assigns(:stamp))
  end

  test "should destroy stamp" do
    assert_difference('Stamp.count', -1) do
      delete :destroy, id: @stamp
    end

    assert_redirected_to stamps_path
  end
end
