require 'test_helper'

class NetworkSwitchesControllerTest < ActionController::TestCase
  setup do
    @network_switch = network_switches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:network_switches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create network_switch" do
    assert_difference('NetworkSwitch.count') do
      post :create, network_switch: { brand: @network_switch.brand, brandmodel: @network_switch.brandmodel, code: @network_switch.code, dimensions: @network_switch.dimensions, features: @network_switch.features, format: @network_switch.format, layer: @network_switch.layer, name: @network_switch.name, other: @network_switch.other, package: @network_switch.package, power: @network_switch.power, price: @network_switch.price, primaryports: @network_switch.primaryports, primaryportspeed: @network_switch.primaryportspeed, series: @network_switch.series, standards: @network_switch.standards, warranty: @network_switch.warranty, weight: @network_switch.weight }
    end

    assert_redirected_to network_switch_path(assigns(:network_switch))
  end

  test "should show network_switch" do
    get :show, id: @network_switch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @network_switch
    assert_response :success
  end

  test "should update network_switch" do
    patch :update, id: @network_switch, network_switch: { brand: @network_switch.brand, brandmodel: @network_switch.brandmodel, code: @network_switch.code, dimensions: @network_switch.dimensions, features: @network_switch.features, format: @network_switch.format, layer: @network_switch.layer, name: @network_switch.name, other: @network_switch.other, package: @network_switch.package, power: @network_switch.power, price: @network_switch.price, primaryports: @network_switch.primaryports, primaryportspeed: @network_switch.primaryportspeed, series: @network_switch.series, standards: @network_switch.standards, warranty: @network_switch.warranty, weight: @network_switch.weight }
    assert_redirected_to network_switch_path(assigns(:network_switch))
  end

  test "should destroy network_switch" do
    assert_difference('NetworkSwitch.count', -1) do
      delete :destroy, id: @network_switch
    end

    assert_redirected_to network_switches_path
  end
end
