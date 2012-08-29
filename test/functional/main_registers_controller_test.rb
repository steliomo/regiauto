require 'test_helper'

class MainRegistersControllerTest < ActionController::TestCase
  setup do
    @main_register = main_registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_register" do
    assert_difference('MainRegister.count') do
      post :create, :main_register => @main_register.attributes
    end

    assert_redirected_to main_register_path(assigns(:main_register))
  end

  test "should show main_register" do
    get :show, :id => @main_register.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @main_register.to_param
    assert_response :success
  end

  test "should update main_register" do
    put :update, :id => @main_register.to_param, :main_register => @main_register.attributes
    assert_redirected_to main_register_path(assigns(:main_register))
  end

  test "should destroy main_register" do
    assert_difference('MainRegister.count', -1) do
      delete :destroy, :id => @main_register.to_param
    end

    assert_redirected_to main_registers_path
  end
end
