require 'test_helper'

class ProcessRegistersControllerTest < ActionController::TestCase
  setup do
    @process_register = process_registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:process_registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create process_register" do
    assert_difference('ProcessRegister.count') do
      post :create, :process_register => @process_register.attributes
    end

    assert_redirected_to process_register_path(assigns(:process_register))
  end

  test "should show process_register" do
    get :show, :id => @process_register.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @process_register.to_param
    assert_response :success
  end

  test "should update process_register" do
    put :update, :id => @process_register.to_param, :process_register => @process_register.attributes
    assert_redirected_to process_register_path(assigns(:process_register))
  end

  test "should destroy process_register" do
    assert_difference('ProcessRegister.count', -1) do
      delete :destroy, :id => @process_register.to_param
    end

    assert_redirected_to process_registers_path
  end
end
