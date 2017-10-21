require 'test_helper'

class VirtualRunsControllerTest < ActionController::TestCase
  setup do
    @virtual_run = virtual_runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:virtual_runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create virtual_run" do
    assert_difference('VirtualRun.count') do
      post :create, virtual_run: { length: @virtual_run.length, status: @virtual_run.status }
    end

    assert_redirected_to virtual_run_path(assigns(:virtual_run))
  end

  test "should show virtual_run" do
    get :show, id: @virtual_run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @virtual_run
    assert_response :success
  end

  test "should update virtual_run" do
    patch :update, id: @virtual_run, virtual_run: { length: @virtual_run.length, status: @virtual_run.status }
    assert_redirected_to virtual_run_path(assigns(:virtual_run))
  end

  test "should destroy virtual_run" do
    assert_difference('VirtualRun.count', -1) do
      delete :destroy, id: @virtual_run
    end

    assert_redirected_to virtual_runs_path
  end
end
