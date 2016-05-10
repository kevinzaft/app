require 'test_helper'

class CarAccessoriesControllerTest < ActionController::TestCase
  setup do
    @car_accessory = car_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_accessory" do
    assert_difference('CarAccessory.count') do
      post :create, car_accessory: { brand: @car_accessory.brand, camodel: @car_accessory.camodel, catype: @car_accessory.catype, code: @car_accessory.code, dimensions: @car_accessory.dimensions, features: @car_accessory.features, name: @car_accessory.name, other: @car_accessory.other, price: @car_accessory.price, spec: @car_accessory.spec }
    end

    assert_redirected_to car_accessory_path(assigns(:car_accessory))
  end

  test "should show car_accessory" do
    get :show, id: @car_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_accessory
    assert_response :success
  end

  test "should update car_accessory" do
    patch :update, id: @car_accessory, car_accessory: { brand: @car_accessory.brand, camodel: @car_accessory.camodel, catype: @car_accessory.catype, code: @car_accessory.code, dimensions: @car_accessory.dimensions, features: @car_accessory.features, name: @car_accessory.name, other: @car_accessory.other, price: @car_accessory.price, spec: @car_accessory.spec }
    assert_redirected_to car_accessory_path(assigns(:car_accessory))
  end

  test "should destroy car_accessory" do
    assert_difference('CarAccessory.count', -1) do
      delete :destroy, id: @car_accessory
    end

    assert_redirected_to car_accessories_path
  end
end
