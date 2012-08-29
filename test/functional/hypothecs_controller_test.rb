require 'test_helper'

class HypothecsControllerTest < ActionController::TestCase
  setup do
    @hypothec = hypothecs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hypothecs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hypothec" do
    assert_difference('Hypothec.count') do
      post :create, :hypothec => @hypothec.attributes
    end

    assert_redirected_to hypothec_path(assigns(:hypothec))
  end

  test "should show hypothec" do
    get :show, :id => @hypothec.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hypothec.to_param
    assert_response :success
  end

  test "should update hypothec" do
    put :update, :id => @hypothec.to_param, :hypothec => @hypothec.attributes
    assert_redirected_to hypothec_path(assigns(:hypothec))
  end

  test "should destroy hypothec" do
    assert_difference('Hypothec.count', -1) do
      delete :destroy, :id => @hypothec.to_param
    end

    assert_redirected_to hypothecs_path
  end
end
