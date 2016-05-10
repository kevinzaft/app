require 'test_helper'

class NetworkAdaptersControllerTest < ActionController::TestCase
  setup do
    @network_adapter = network_adapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:network_adapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create network_adapter" do
    assert_difference('NetworkAdapter.count') do
      post :create, network_adapter: { antenna: @network_adapter.antenna, brand: @network_adapter.brand, brandmodel: @network_adapter.brandmodel, channels: @network_adapter.channels, code: @network_adapter.code, color: @network_adapter.color, dimenstions: @network_adapter.dimenstions, features: @network_adapter.features, frequencyband: @network_adapter.frequencyband, humidity: @network_adapter.humidity, interface: @network_adapter.interface, modulation: @network_adapter.modulation, name: @network_adapter.name, other: @network_adapter.other, package: @network_adapter.package, price: @network_adapter.price, security: @network_adapter.security, standards: @network_adapter.standards, systemrequirements: @network_adapter.systemrequirements, temperature: @network_adapter.temperature, transmittedpower: @network_adapter.transmittedpower, warranty: @network_adapter.warranty, weight: @network_adapter.weight, wirelessdatarates: @network_adapter.wirelessdatarates }
    end

    assert_redirected_to network_adapter_path(assigns(:network_adapter))
  end

  test "should show network_adapter" do
    get :show, id: @network_adapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @network_adapter
    assert_response :success
  end

  test "should update network_adapter" do
    patch :update, id: @network_adapter, network_adapter: { antenna: @network_adapter.antenna, brand: @network_adapter.brand, brandmodel: @network_adapter.brandmodel, channels: @network_adapter.channels, code: @network_adapter.code, color: @network_adapter.color, dimenstions: @network_adapter.dimenstions, features: @network_adapter.features, frequencyband: @network_adapter.frequencyband, humidity: @network_adapter.humidity, interface: @network_adapter.interface, modulation: @network_adapter.modulation, name: @network_adapter.name, other: @network_adapter.other, package: @network_adapter.package, price: @network_adapter.price, security: @network_adapter.security, standards: @network_adapter.standards, systemrequirements: @network_adapter.systemrequirements, temperature: @network_adapter.temperature, transmittedpower: @network_adapter.transmittedpower, warranty: @network_adapter.warranty, weight: @network_adapter.weight, wirelessdatarates: @network_adapter.wirelessdatarates }
    assert_redirected_to network_adapter_path(assigns(:network_adapter))
  end

  test "should destroy network_adapter" do
    assert_difference('NetworkAdapter.count', -1) do
      delete :destroy, id: @network_adapter
    end

    assert_redirected_to network_adapters_path
  end
end
