require 'test_helper'

class SaleRegistersControllerTest < ActionController::TestCase
  setup do
    @sale_register = sale_registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_register" do
    assert_difference('SaleRegister.count') do
      post :create, :sale_register => @sale_register.attributes
    end

    assert_redirected_to sale_register_path(assigns(:sale_register))
  end

  test "should show sale_register" do
    get :show, :id => @sale_register.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sale_register.to_param
    assert_response :success
  end

  test "should update sale_register" do
    put :update, :id => @sale_register.to_param, :sale_register => @sale_register.attributes
    assert_redirected_to sale_register_path(assigns(:sale_register))
  end

  test "should destroy sale_register" do
    assert_difference('SaleRegister.count', -1) do
      delete :destroy, :id => @sale_register.to_param
    end

    assert_redirected_to sale_registers_path
  end
end
