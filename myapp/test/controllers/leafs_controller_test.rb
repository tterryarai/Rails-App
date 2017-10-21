require 'test_helper'

class LeafsControllerTest < ActionController::TestCase
  setup do
    @leaf = leafs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leafs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leaf" do
    assert_difference('Leaf.count') do
      post :create, leaf: { description: @leaf.description, group1: @leaf.group1, group2: @leaf.group2, group3: @leaf.group3, subtitle: @leaf.subtitle, title: @leaf.title }
    end

    assert_redirected_to leaf_path(assigns(:leaf))
  end

  test "should show leaf" do
    get :show, id: @leaf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leaf
    assert_response :success
  end

  test "should update leaf" do
    patch :update, id: @leaf, leaf: { description: @leaf.description, group1: @leaf.group1, group2: @leaf.group2, group3: @leaf.group3, subtitle: @leaf.subtitle, title: @leaf.title }
    assert_redirected_to leaf_path(assigns(:leaf))
  end

  test "should destroy leaf" do
    assert_difference('Leaf.count', -1) do
      delete :destroy, id: @leaf
    end

    assert_redirected_to leafs_path
  end
end
