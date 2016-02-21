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
      post :create, stamp: { description: @stamp.description, image_path: @stamp.image_path, issue_area: @stamp.issue_area, issue_date: @stamp.issue_date, issue_price: @stamp.issue_price, name: @stamp.name, realm: @stamp.realm, remark1: @stamp.remark1, remark2: @stamp.remark2, remark3: @stamp.remark3, series: @stamp.series, status: @stamp.status }
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
    put :update, id: @stamp, stamp: { description: @stamp.description, image_path: @stamp.image_path, issue_area: @stamp.issue_area, issue_date: @stamp.issue_date, issue_price: @stamp.issue_price, name: @stamp.name, realm: @stamp.realm, remark1: @stamp.remark1, remark2: @stamp.remark2, remark3: @stamp.remark3, series: @stamp.series, status: @stamp.status }
    assert_redirected_to stamp_path(assigns(:stamp))
  end

  test "should destroy stamp" do
    assert_difference('Stamp.count', -1) do
      delete :destroy, id: @stamp
    end

    assert_redirected_to stamps_path
  end
end
