require 'test_helper'

class AppliancesControllerTest < ActionController::TestCase
  setup do
    @appliance = appliances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appliances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appliance" do
    assert_difference('Appliance.count') do
      post :create, appliance: { appliancemodel: @appliance.appliancemodel, appliancetype: @appliance.appliancetype, brand: @appliance.brand, code: @appliance.code, dimensions: @appliance.dimensions, features: @appliance.features, name: @appliance.name, other: @appliance.other, power: @appliance.power, price: @appliance.price, specifications: @appliance.specifications, warranty: @appliance.warranty, weight: @appliance.weight }
    end

    assert_redirected_to appliance_path(assigns(:appliance))
  end

  test "should show appliance" do
    get :show, id: @appliance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appliance
    assert_response :success
  end

  test "should update appliance" do
    patch :update, id: @appliance, appliance: { appliancemodel: @appliance.appliancemodel, appliancetype: @appliance.appliancetype, brand: @appliance.brand, code: @appliance.code, dimensions: @appliance.dimensions, features: @appliance.features, name: @appliance.name, other: @appliance.other, power: @appliance.power, price: @appliance.price, specifications: @appliance.specifications, warranty: @appliance.warranty, weight: @appliance.weight }
    assert_redirected_to appliance_path(assigns(:appliance))
  end

  test "should destroy appliance" do
    assert_difference('Appliance.count', -1) do
      delete :destroy, id: @appliance
    end

    assert_redirected_to appliances_path
  end
end
