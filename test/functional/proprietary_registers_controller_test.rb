require 'test_helper'

class ProprietaryRegistersControllerTest < ActionController::TestCase
  setup do
    @proprietary_register = proprietary_registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proprietary_registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proprietary_register" do
    assert_difference('ProprietaryRegister.count') do
      post :create, :proprietary_register => @proprietary_register.attributes
    end

    assert_redirected_to proprietary_register_path(assigns(:proprietary_register))
  end

  test "should show proprietary_register" do
    get :show, :id => @proprietary_register.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @proprietary_register.to_param
    assert_response :success
  end

  test "should update proprietary_register" do
    put :update, :id => @proprietary_register.to_param, :proprietary_register => @proprietary_register.attributes
    assert_redirected_to proprietary_register_path(assigns(:proprietary_register))
  end

  test "should destroy proprietary_register" do
    assert_difference('ProprietaryRegister.count', -1) do
      delete :destroy, :id => @proprietary_register.to_param
    end

    assert_redirected_to proprietary_registers_path
  end
end
