require 'test_helper'

class FloorsControllerTest < ActionController::TestCase
  setup do
    @floor = floors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor" do
    assert_difference('Floor.count') do
      post :create, :floor => @floor.attributes
    end

    assert_redirected_to floor_path(assigns(:floor))
  end

  test "should show floor" do
    get :show, :id => @floor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @floor.to_param
    assert_response :success
  end

  test "should update floor" do
    put :update, :id => @floor.to_param, :floor => @floor.attributes
    assert_redirected_to floor_path(assigns(:floor))
  end

  test "should destroy floor" do
    assert_difference('Floor.count', -1) do
      delete :destroy, :id => @floor.to_param
    end

    assert_redirected_to floors_path
  end
end
