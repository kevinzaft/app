require 'test_helper'

class NetworkingAccessoriesControllerTest < ActionController::TestCase
  setup do
    @networking_accessory = networking_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:networking_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create networking_accessory" do
    assert_difference('NetworkingAccessory.count') do
      post :create, networking_accessory: { accessorytype: @networking_accessory.accessorytype, brand: @networking_accessory.brand, brandmodel: @networking_accessory.brandmodel, code: @networking_accessory.code, color: @networking_accessory.color, details: @networking_accessory.details, dimensions: @networking_accessory.dimensions, features: @networking_accessory.features, name: @networking_accessory.name, other: @networking_accessory.other, price: @networking_accessory.price }
    end

    assert_redirected_to networking_accessory_path(assigns(:networking_accessory))
  end

  test "should show networking_accessory" do
    get :show, id: @networking_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @networking_accessory
    assert_response :success
  end

  test "should update networking_accessory" do
    patch :update, id: @networking_accessory, networking_accessory: { accessorytype: @networking_accessory.accessorytype, brand: @networking_accessory.brand, brandmodel: @networking_accessory.brandmodel, code: @networking_accessory.code, color: @networking_accessory.color, details: @networking_accessory.details, dimensions: @networking_accessory.dimensions, features: @networking_accessory.features, name: @networking_accessory.name, other: @networking_accessory.other, price: @networking_accessory.price }
    assert_redirected_to networking_accessory_path(assigns(:networking_accessory))
  end

  test "should destroy networking_accessory" do
    assert_difference('NetworkingAccessory.count', -1) do
      delete :destroy, id: @networking_accessory
    end

    assert_redirected_to networking_accessories_path
  end
end
