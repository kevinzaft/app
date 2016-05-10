require 'test_helper'

class PhoneAccessoriesControllerTest < ActionController::TestCase
  setup do
    @phone_accessory = phone_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phone_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phone_accessory" do
    assert_difference('PhoneAccessory.count') do
      post :create, phone_accessory: { accessorymodel: @phone_accessory.accessorymodel, accessorytype: @phone_accessory.accessorytype, brand: @phone_accessory.brand, code: @phone_accessory.code, compatiblilty: @phone_accessory.compatiblilty, dimensions: @phone_accessory.dimensions, features: @phone_accessory.features, name: @phone_accessory.name, other: @phone_accessory.other, price: @phone_accessory.price }
    end

    assert_redirected_to phone_accessory_path(assigns(:phone_accessory))
  end

  test "should show phone_accessory" do
    get :show, id: @phone_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phone_accessory
    assert_response :success
  end

  test "should update phone_accessory" do
    patch :update, id: @phone_accessory, phone_accessory: { accessorymodel: @phone_accessory.accessorymodel, accessorytype: @phone_accessory.accessorytype, brand: @phone_accessory.brand, code: @phone_accessory.code, compatiblilty: @phone_accessory.compatiblilty, dimensions: @phone_accessory.dimensions, features: @phone_accessory.features, name: @phone_accessory.name, other: @phone_accessory.other, price: @phone_accessory.price }
    assert_redirected_to phone_accessory_path(assigns(:phone_accessory))
  end

  test "should destroy phone_accessory" do
    assert_difference('PhoneAccessory.count', -1) do
      delete :destroy, id: @phone_accessory
    end

    assert_redirected_to phone_accessories_path
  end
end
