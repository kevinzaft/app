require 'test_helper'

class TabletsControllerTest < ActionController::TestCase
  setup do
    @tablet = tablets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tablets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tablet" do
    assert_difference('Tablet.count') do
      post :create, tablet: { audio: @tablet.audio, audioports: @tablet.audioports, battery: @tablet.battery, bluetooth: @tablet.bluetooth, brand: @tablet.brand, brandmodel: @tablet.brandmodel, builtinstorage: @tablet.builtinstorage, cardreader: @tablet.cardreader, code: @tablet.code, cpuspeed: @tablet.cpuspeed, cputype: @tablet.cputype, dimensions: @tablet.dimensions, displaytype: @tablet.displaytype, frontcamera: @tablet.frontcamera, funcion: @tablet.funcion, gpuvpu: @tablet.gpuvpu, hdmi: @tablet.hdmi, lcdfeatures: @tablet.lcdfeatures, memory: @tablet.memory, name: @tablet.name, os: @tablet.os, other: @tablet.other, price: @tablet.price, rearcamera: @tablet.rearcamera, resolution: @tablet.resolution, screensize: @tablet.screensize, service: @tablet.service, touchscreen: @tablet.touchscreen, usb: @tablet.usb, videomemory: @tablet.videomemory, warranty: @tablet.warranty, weight: @tablet.weight, wlan: @tablet.wlan }
    end

    assert_redirected_to tablet_path(assigns(:tablet))
  end

  test "should show tablet" do
    get :show, id: @tablet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tablet
    assert_response :success
  end

  test "should update tablet" do
    patch :update, id: @tablet, tablet: { audio: @tablet.audio, audioports: @tablet.audioports, battery: @tablet.battery, bluetooth: @tablet.bluetooth, brand: @tablet.brand, brandmodel: @tablet.brandmodel, builtinstorage: @tablet.builtinstorage, cardreader: @tablet.cardreader, code: @tablet.code, cpuspeed: @tablet.cpuspeed, cputype: @tablet.cputype, dimensions: @tablet.dimensions, displaytype: @tablet.displaytype, frontcamera: @tablet.frontcamera, funcion: @tablet.funcion, gpuvpu: @tablet.gpuvpu, hdmi: @tablet.hdmi, lcdfeatures: @tablet.lcdfeatures, memory: @tablet.memory, name: @tablet.name, os: @tablet.os, other: @tablet.other, price: @tablet.price, rearcamera: @tablet.rearcamera, resolution: @tablet.resolution, screensize: @tablet.screensize, service: @tablet.service, touchscreen: @tablet.touchscreen, usb: @tablet.usb, videomemory: @tablet.videomemory, warranty: @tablet.warranty, weight: @tablet.weight, wlan: @tablet.wlan }
    assert_redirected_to tablet_path(assigns(:tablet))
  end

  test "should destroy tablet" do
    assert_difference('Tablet.count', -1) do
      delete :destroy, id: @tablet
    end

    assert_redirected_to tablets_path
  end
end
