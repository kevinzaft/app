require 'test_helper'

class ModemsControllerTest < ActionController::TestCase
  setup do
    @modem = modems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modem" do
    assert_difference('Modem.count') do
      post :create, modem: { brand: @modem.brand, brandmodel: @modem.brandmodel, code: @modem.code, features: @modem.features, interface: @modem.interface, modemtype: @modem.modemtype, name: @modem.name, other: @modem.other, package: @modem.package, price: @modem.price, standards: @modem.standards, warranty: @modem.warranty }
    end

    assert_redirected_to modem_path(assigns(:modem))
  end

  test "should show modem" do
    get :show, id: @modem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modem
    assert_response :success
  end

  test "should update modem" do
    patch :update, id: @modem, modem: { brand: @modem.brand, brandmodel: @modem.brandmodel, code: @modem.code, features: @modem.features, interface: @modem.interface, modemtype: @modem.modemtype, name: @modem.name, other: @modem.other, package: @modem.package, price: @modem.price, standards: @modem.standards, warranty: @modem.warranty }
    assert_redirected_to modem_path(assigns(:modem))
  end

  test "should destroy modem" do
    assert_difference('Modem.count', -1) do
      delete :destroy, id: @modem
    end

    assert_redirected_to modems_path
  end
end
