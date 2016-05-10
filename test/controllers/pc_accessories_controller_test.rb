require 'test_helper'

class PcAccessoriesControllerTest < ActionController::TestCase
  setup do
    @pc_accessory = pc_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pc_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pc_accessory" do
    assert_difference('PcAccessory.count') do
      post :create, pc_accessory: { brand: @pc_accessory.brand, brandmodel: @pc_accessory.brandmodel, capacity: @pc_accessory.capacity, casetype: @pc_accessory.casetype, code: @pc_accessory.code, color: @pc_accessory.color, dimensions: @pc_accessory.dimensions, features: @pc_accessory.features, fitmostscreensize: @pc_accessory.fitmostscreensize, name: @pc_accessory.name, other: @pc_accessory.other, price: @pc_accessory.price, warranty: @pc_accessory.warranty, weight: @pc_accessory.weight }
    end

    assert_redirected_to pc_accessory_path(assigns(:pc_accessory))
  end

  test "should show pc_accessory" do
    get :show, id: @pc_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pc_accessory
    assert_response :success
  end

  test "should update pc_accessory" do
    patch :update, id: @pc_accessory, pc_accessory: { brand: @pc_accessory.brand, brandmodel: @pc_accessory.brandmodel, capacity: @pc_accessory.capacity, casetype: @pc_accessory.casetype, code: @pc_accessory.code, color: @pc_accessory.color, dimensions: @pc_accessory.dimensions, features: @pc_accessory.features, fitmostscreensize: @pc_accessory.fitmostscreensize, name: @pc_accessory.name, other: @pc_accessory.other, price: @pc_accessory.price, warranty: @pc_accessory.warranty, weight: @pc_accessory.weight }
    assert_redirected_to pc_accessory_path(assigns(:pc_accessory))
  end

  test "should destroy pc_accessory" do
    assert_difference('PcAccessory.count', -1) do
      delete :destroy, id: @pc_accessory
    end

    assert_redirected_to pc_accessories_path
  end
end
