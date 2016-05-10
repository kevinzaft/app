require 'test_helper'

class WirelessAdaptersControllerTest < ActionController::TestCase
  setup do
    @wireless_adapter = wireless_adapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wireless_adapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wireless_adapter" do
    assert_difference('WirelessAdapter.count') do
      post :create, wireless_adapter: { antenna: @wireless_adapter.antenna, brand: @wireless_adapter.brand, brandmodel: @wireless_adapter.brandmodel, channel: @wireless_adapter.channel, code: @wireless_adapter.code, color: @wireless_adapter.color, dimensions: @wireless_adapter.dimensions, features: @wireless_adapter.features, frequencyband: @wireless_adapter.frequencyband, humidity: @wireless_adapter.humidity, interface: @wireless_adapter.interface, modulation: @wireless_adapter.modulation, name: @wireless_adapter.name, other: @wireless_adapter.other, package: @wireless_adapter.package, price: @wireless_adapter.price, security: @wireless_adapter.security, standards: @wireless_adapter.standards, systemrequirements: @wireless_adapter.systemrequirements, temperature: @wireless_adapter.temperature, transmittedpower: @wireless_adapter.transmittedpower, warranty: @wireless_adapter.warranty, weight: @wireless_adapter.weight, wirelessdatarates: @wireless_adapter.wirelessdatarates }
    end

    assert_redirected_to wireless_adapter_path(assigns(:wireless_adapter))
  end

  test "should show wireless_adapter" do
    get :show, id: @wireless_adapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wireless_adapter
    assert_response :success
  end

  test "should update wireless_adapter" do
    patch :update, id: @wireless_adapter, wireless_adapter: { antenna: @wireless_adapter.antenna, brand: @wireless_adapter.brand, brandmodel: @wireless_adapter.brandmodel, channel: @wireless_adapter.channel, code: @wireless_adapter.code, color: @wireless_adapter.color, dimensions: @wireless_adapter.dimensions, features: @wireless_adapter.features, frequencyband: @wireless_adapter.frequencyband, humidity: @wireless_adapter.humidity, interface: @wireless_adapter.interface, modulation: @wireless_adapter.modulation, name: @wireless_adapter.name, other: @wireless_adapter.other, package: @wireless_adapter.package, price: @wireless_adapter.price, security: @wireless_adapter.security, standards: @wireless_adapter.standards, systemrequirements: @wireless_adapter.systemrequirements, temperature: @wireless_adapter.temperature, transmittedpower: @wireless_adapter.transmittedpower, warranty: @wireless_adapter.warranty, weight: @wireless_adapter.weight, wirelessdatarates: @wireless_adapter.wirelessdatarates }
    assert_redirected_to wireless_adapter_path(assigns(:wireless_adapter))
  end

  test "should destroy wireless_adapter" do
    assert_difference('WirelessAdapter.count', -1) do
      delete :destroy, id: @wireless_adapter
    end

    assert_redirected_to wireless_adapters_path
  end
end
