require 'test_helper'

class WirelessRoutersControllerTest < ActionController::TestCase
  setup do
    @wireless_router = wireless_routers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wireless_routers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wireless_router" do
    assert_difference('WirelessRouter.count') do
      post :create, wireless_router: { antenna: @wireless_router.antenna, brand: @wireless_router.brand, brandmodel: @wireless_router.brandmodel, buttons: @wireless_router.buttons, channels: @wireless_router.channels, code: @wireless_router.code, devicemanagement: @wireless_router.devicemanagement, dimensions: @wireless_router.dimensions, features: @wireless_router.features, frequencyband: @wireless_router.frequencyband, humidity: @wireless_router.humidity, interface: @wireless_router.interface, lanports: @wireless_router.lanports, led: @wireless_router.led, name: @wireless_router.name, other: @wireless_router.other, package: @wireless_router.package, poweradapter: @wireless_router.poweradapter, price: @wireless_router.price, secrurity: @wireless_router.secrurity, standards: @wireless_router.standards, systemrequirements: @wireless_router.systemrequirements, temperature: @wireless_router.temperature, transmittedpower: @wireless_router.transmittedpower, wanports: @wireless_router.wanports, warranty: @wireless_router.warranty, weight: @wireless_router.weight, wirelessadapterincuded: @wireless_router.wirelessadapterincuded, wirelessdatarates: @wireless_router.wirelessdatarates, wpawpa2: @wireless_router.wpawpa2 }
    end

    assert_redirected_to wireless_router_path(assigns(:wireless_router))
  end

  test "should show wireless_router" do
    get :show, id: @wireless_router
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wireless_router
    assert_response :success
  end

  test "should update wireless_router" do
    patch :update, id: @wireless_router, wireless_router: { antenna: @wireless_router.antenna, brand: @wireless_router.brand, brandmodel: @wireless_router.brandmodel, buttons: @wireless_router.buttons, channels: @wireless_router.channels, code: @wireless_router.code, devicemanagement: @wireless_router.devicemanagement, dimensions: @wireless_router.dimensions, features: @wireless_router.features, frequencyband: @wireless_router.frequencyband, humidity: @wireless_router.humidity, interface: @wireless_router.interface, lanports: @wireless_router.lanports, led: @wireless_router.led, name: @wireless_router.name, other: @wireless_router.other, package: @wireless_router.package, poweradapter: @wireless_router.poweradapter, price: @wireless_router.price, secrurity: @wireless_router.secrurity, standards: @wireless_router.standards, systemrequirements: @wireless_router.systemrequirements, temperature: @wireless_router.temperature, transmittedpower: @wireless_router.transmittedpower, wanports: @wireless_router.wanports, warranty: @wireless_router.warranty, weight: @wireless_router.weight, wirelessadapterincuded: @wireless_router.wirelessadapterincuded, wirelessdatarates: @wireless_router.wirelessdatarates, wpawpa2: @wireless_router.wpawpa2 }
    assert_redirected_to wireless_router_path(assigns(:wireless_router))
  end

  test "should destroy wireless_router" do
    assert_difference('WirelessRouter.count', -1) do
      delete :destroy, id: @wireless_router
    end

    assert_redirected_to wireless_routers_path
  end
end
