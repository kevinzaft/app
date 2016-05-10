require 'test_helper'

class LaptopsControllerTest < ActionController::TestCase
  setup do
    @laptop = laptops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laptops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laptop" do
    assert_difference('Laptop.count') do
      post :create, laptop: { audioports: @laptop.audioports, battery: @laptop.battery, batterylife: @laptop.batterylife, bluetooth: @laptop.bluetooth, brand: @laptop.brand, brandmodel: @laptop.brandmodel, cardreader: @laptop.cardreader, code: @laptop.code, color: @laptop.color, corename: @laptop.corename, cpul3cache: @laptop.cpul3cache, cpuspeed: @laptop.cpuspeed, cputype: @laptop.cputype, dimensions: @laptop.dimensions, gpuvpu: @laptop.gpuvpu, graphictype: @laptop.graphictype, hdd: @laptop.hdd, hddrpm: @laptop.hddrpm, hdmi: @laptop.hdmi, lcdfeatures: @laptop.lcdfeatures, maxmemorysupported: @laptop.maxmemorysupported, memory: @laptop.memory, memoryslotavailable: @laptop.memoryslotavailable, memoryslottotal: @laptop.memoryslottotal, memoryspec: @laptop.memoryspec, memoryspeed: @laptop.memoryspeed, name: @laptop.name, numberofcores: @laptop.numberofcores, opticaldrivetype: @laptop.opticaldrivetype, os: @laptop.os, other: @laptop.other, partnumber: @laptop.partnumber, price: @laptop.price, resolution: @laptop.resolution, screensize: @laptop.screensize, series: @laptop.series, touchscreen: @laptop.touchscreen, turbofrequency: @laptop.turbofrequency, usbports: @laptop.usbports, videomemory: @laptop.videomemory, videoports: @laptop.videoports, warranty: @laptop.warranty, webcam: @laptop.webcam, weight: @laptop.weight, widescreensupport: @laptop.widescreensupport, wlan: @laptop.wlan }
    end

    assert_redirected_to laptop_path(assigns(:laptop))
  end

  test "should show laptop" do
    get :show, id: @laptop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laptop
    assert_response :success
  end

  test "should update laptop" do
    patch :update, id: @laptop, laptop: { audioports: @laptop.audioports, battery: @laptop.battery, batterylife: @laptop.batterylife, bluetooth: @laptop.bluetooth, brand: @laptop.brand, brandmodel: @laptop.brandmodel, cardreader: @laptop.cardreader, code: @laptop.code, color: @laptop.color, corename: @laptop.corename, cpul3cache: @laptop.cpul3cache, cpuspeed: @laptop.cpuspeed, cputype: @laptop.cputype, dimensions: @laptop.dimensions, gpuvpu: @laptop.gpuvpu, graphictype: @laptop.graphictype, hdd: @laptop.hdd, hddrpm: @laptop.hddrpm, hdmi: @laptop.hdmi, lcdfeatures: @laptop.lcdfeatures, maxmemorysupported: @laptop.maxmemorysupported, memory: @laptop.memory, memoryslotavailable: @laptop.memoryslotavailable, memoryslottotal: @laptop.memoryslottotal, memoryspec: @laptop.memoryspec, memoryspeed: @laptop.memoryspeed, name: @laptop.name, numberofcores: @laptop.numberofcores, opticaldrivetype: @laptop.opticaldrivetype, os: @laptop.os, other: @laptop.other, partnumber: @laptop.partnumber, price: @laptop.price, resolution: @laptop.resolution, screensize: @laptop.screensize, series: @laptop.series, touchscreen: @laptop.touchscreen, turbofrequency: @laptop.turbofrequency, usbports: @laptop.usbports, videomemory: @laptop.videomemory, videoports: @laptop.videoports, warranty: @laptop.warranty, webcam: @laptop.webcam, weight: @laptop.weight, widescreensupport: @laptop.widescreensupport, wlan: @laptop.wlan }
    assert_redirected_to laptop_path(assigns(:laptop))
  end

  test "should destroy laptop" do
    assert_difference('Laptop.count', -1) do
      delete :destroy, id: @laptop
    end

    assert_redirected_to laptops_path
  end
end
