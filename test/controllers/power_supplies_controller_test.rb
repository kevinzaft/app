require 'test_helper'

class PowerSuppliesControllerTest < ActionController::TestCase
  setup do
    @power_supply = power_supplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:power_supplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create power_supply" do
    assert_difference('PowerSupply.count') do
      post :create, power_supply: { brand: @power_supply.brand, code: @power_supply.code, dimensions: @power_supply.dimensions, efficiency: @power_supply.efficiency, fans: @power_supply.fans, features: @power_supply.features, inputcurrent: @power_supply.inputcurrent, inputfrequency: @power_supply.inputfrequency, inputvoltage: @power_supply.inputvoltage, mainconnector: @power_supply.mainconnector, maxpower: @power_supply.maxpower, model: @power_supply.model, name: @power_supply.name, output: @power_supply.output, pci: @power_supply.pci, pfc: @power_supply.pfc, powertype: @power_supply.powertype, price: @power_supply.price, sata: @power_supply.sata, series: @power_supply.series, twelvevrails: @power_supply.twelvevrails, voltageprotection: @power_supply.voltageprotection }
    end

    assert_redirected_to power_supply_path(assigns(:power_supply))
  end

  test "should show power_supply" do
    get :show, id: @power_supply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @power_supply
    assert_response :success
  end

  test "should update power_supply" do
    patch :update, id: @power_supply, power_supply: { brand: @power_supply.brand, code: @power_supply.code, dimensions: @power_supply.dimensions, efficiency: @power_supply.efficiency, fans: @power_supply.fans, features: @power_supply.features, inputcurrent: @power_supply.inputcurrent, inputfrequency: @power_supply.inputfrequency, inputvoltage: @power_supply.inputvoltage, mainconnector: @power_supply.mainconnector, maxpower: @power_supply.maxpower, model: @power_supply.model, name: @power_supply.name, output: @power_supply.output, pci: @power_supply.pci, pfc: @power_supply.pfc, powertype: @power_supply.powertype, price: @power_supply.price, sata: @power_supply.sata, series: @power_supply.series, twelvevrails: @power_supply.twelvevrails, voltageprotection: @power_supply.voltageprotection }
    assert_redirected_to power_supply_path(assigns(:power_supply))
  end

  test "should destroy power_supply" do
    assert_difference('PowerSupply.count', -1) do
      delete :destroy, id: @power_supply
    end

    assert_redirected_to power_supplies_path
  end
end
