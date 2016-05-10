require 'test_helper'

class RoutersControllerTest < ActionController::TestCase
  setup do
    @router = routers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create router" do
    assert_difference('Router.count') do
      post :create, router: { antenna: @router.antenna, brand: @router.brand, brandmodel: @router.brandmodel, buttons: @router.buttons, channels: @router.channels, code: @router.code, devicemanagement: @router.devicemanagement, dimensions: @router.dimensions, features: @router.features, frequencyband: @router.frequencyband, humidity: @router.humidity, interface: @router.interface, lanports: @router.lanports, led: @router.led, name: @router.name, other: @router.other, package: @router.package, poweradapter: @router.poweradapter, price: @router.price, security: @router.security, standards: @router.standards, systemrequirements: @router.systemrequirements, temperature: @router.temperature, transmittedpower: @router.transmittedpower, wanports: @router.wanports, warranty: @router.warranty, weight: @router.weight, wirelessadapterincluded: @router.wirelessadapterincluded, wirelessdatarates: @router.wirelessdatarates, wpawpa2: @router.wpawpa2 }
    end

    assert_redirected_to router_path(assigns(:router))
  end

  test "should show router" do
    get :show, id: @router
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @router
    assert_response :success
  end

  test "should update router" do
    patch :update, id: @router, router: { antenna: @router.antenna, brand: @router.brand, brandmodel: @router.brandmodel, buttons: @router.buttons, channels: @router.channels, code: @router.code, devicemanagement: @router.devicemanagement, dimensions: @router.dimensions, features: @router.features, frequencyband: @router.frequencyband, humidity: @router.humidity, interface: @router.interface, lanports: @router.lanports, led: @router.led, name: @router.name, other: @router.other, package: @router.package, poweradapter: @router.poweradapter, price: @router.price, security: @router.security, standards: @router.standards, systemrequirements: @router.systemrequirements, temperature: @router.temperature, transmittedpower: @router.transmittedpower, wanports: @router.wanports, warranty: @router.warranty, weight: @router.weight, wirelessadapterincluded: @router.wirelessadapterincluded, wirelessdatarates: @router.wirelessdatarates, wpawpa2: @router.wpawpa2 }
    assert_redirected_to router_path(assigns(:router))
  end

  test "should destroy router" do
    assert_difference('Router.count', -1) do
      delete :destroy, id: @router
    end

    assert_redirected_to routers_path
  end
end
