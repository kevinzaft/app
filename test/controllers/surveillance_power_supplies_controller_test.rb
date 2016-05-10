require 'test_helper'

class SurveillancePowerSuppliesControllerTest < ActionController::TestCase
  setup do
    @surveillance_power_supply = surveillance_power_supplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveillance_power_supplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surveillance_power_supply" do
    assert_difference('SurveillancePowerSupply.count') do
      post :create, surveillance_power_supply: { brand: @surveillance_power_supply.brand, brandmodel: @surveillance_power_supply.brandmodel, code: @surveillance_power_supply.code, cordlength: @surveillance_power_supply.cordlength, dimensions: @surveillance_power_supply.dimensions, input: @surveillance_power_supply.input, name: @surveillance_power_supply.name, other: @surveillance_power_supply.other, output: @surveillance_power_supply.output, price: @surveillance_power_supply.price, supplytype: @surveillance_power_supply.supplytype }
    end

    assert_redirected_to surveillance_power_supply_path(assigns(:surveillance_power_supply))
  end

  test "should show surveillance_power_supply" do
    get :show, id: @surveillance_power_supply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surveillance_power_supply
    assert_response :success
  end

  test "should update surveillance_power_supply" do
    patch :update, id: @surveillance_power_supply, surveillance_power_supply: { brand: @surveillance_power_supply.brand, brandmodel: @surveillance_power_supply.brandmodel, code: @surveillance_power_supply.code, cordlength: @surveillance_power_supply.cordlength, dimensions: @surveillance_power_supply.dimensions, input: @surveillance_power_supply.input, name: @surveillance_power_supply.name, other: @surveillance_power_supply.other, output: @surveillance_power_supply.output, price: @surveillance_power_supply.price, supplytype: @surveillance_power_supply.supplytype }
    assert_redirected_to surveillance_power_supply_path(assigns(:surveillance_power_supply))
  end

  test "should destroy surveillance_power_supply" do
    assert_difference('SurveillancePowerSupply.count', -1) do
      delete :destroy, id: @surveillance_power_supply
    end

    assert_redirected_to surveillance_power_supplies_path
  end
end
