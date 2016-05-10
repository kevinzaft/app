require 'test_helper'

class PowerlineAdaptersControllerTest < ActionController::TestCase
  setup do
    @powerline_adapter = powerline_adapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:powerline_adapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create powerline_adapter" do
    assert_difference('PowerlineAdapter.count') do
      post :create, powerline_adapter: { brand: @powerline_adapter.brand, brandmodel: @powerline_adapter.brandmodel, certifications: @powerline_adapter.certifications, code: @powerline_adapter.code, connectionspeeds: @powerline_adapter.connectionspeeds, connectiontype: @powerline_adapter.connectiontype, dimensions: @powerline_adapter.dimensions, encryption: @powerline_adapter.encryption, features: @powerline_adapter.features, humidity: @powerline_adapter.humidity, kittype: @powerline_adapter.kittype, led: @powerline_adapter.led, name: @powerline_adapter.name, other: @powerline_adapter.other, ports: @powerline_adapter.ports, powerlinespeeds: @powerline_adapter.powerlinespeeds, price: @powerline_adapter.price, standards: @powerline_adapter.standards, systemrequirements: @powerline_adapter.systemrequirements, temperature: @powerline_adapter.temperature, warranty: @powerline_adapter.warranty, weight: @powerline_adapter.weight }
    end

    assert_redirected_to powerline_adapter_path(assigns(:powerline_adapter))
  end

  test "should show powerline_adapter" do
    get :show, id: @powerline_adapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @powerline_adapter
    assert_response :success
  end

  test "should update powerline_adapter" do
    patch :update, id: @powerline_adapter, powerline_adapter: { brand: @powerline_adapter.brand, brandmodel: @powerline_adapter.brandmodel, certifications: @powerline_adapter.certifications, code: @powerline_adapter.code, connectionspeeds: @powerline_adapter.connectionspeeds, connectiontype: @powerline_adapter.connectiontype, dimensions: @powerline_adapter.dimensions, encryption: @powerline_adapter.encryption, features: @powerline_adapter.features, humidity: @powerline_adapter.humidity, kittype: @powerline_adapter.kittype, led: @powerline_adapter.led, name: @powerline_adapter.name, other: @powerline_adapter.other, ports: @powerline_adapter.ports, powerlinespeeds: @powerline_adapter.powerlinespeeds, price: @powerline_adapter.price, standards: @powerline_adapter.standards, systemrequirements: @powerline_adapter.systemrequirements, temperature: @powerline_adapter.temperature, warranty: @powerline_adapter.warranty, weight: @powerline_adapter.weight }
    assert_redirected_to powerline_adapter_path(assigns(:powerline_adapter))
  end

  test "should destroy powerline_adapter" do
    assert_difference('PowerlineAdapter.count', -1) do
      delete :destroy, id: @powerline_adapter
    end

    assert_redirected_to powerline_adapters_path
  end
end
