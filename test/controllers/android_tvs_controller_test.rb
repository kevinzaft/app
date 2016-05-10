require 'test_helper'

class AndroidTvsControllerTest < ActionController::TestCase
  setup do
    @android_tv = android_tvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:android_tvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create android_tv" do
    assert_difference('AndroidTv.count') do
      post :create, android_tv: { audio: @android_tv.audio, audioports: @android_tv.audioports, battery: @android_tv.battery, bluetooth: @android_tv.bluetooth, brand: @android_tv.brand, builtinstorage: @android_tv.builtinstorage, cardreader: @android_tv.cardreader, code: @android_tv.code, cores: @android_tv.cores, cpuspeed: @android_tv.cpuspeed, cputype: @android_tv.cputype, gpuvpu: @android_tv.gpuvpu, hdmi: @android_tv.hdmi, lcdfeatures: @android_tv.lcdfeatures, memory: @android_tv.memory, name: @android_tv.name, opticaldrive: @android_tv.opticaldrive, os: @android_tv.os, otherfeatures: @android_tv.otherfeatures, price: @android_tv.price, resolution: @android_tv.resolution, screensize: @android_tv.screensize, series: @android_tv.series, service: @android_tv.service, tech: @android_tv.tech, touchscreen: @android_tv.touchscreen, tvmodel: @android_tv.tvmodel, usbport: @android_tv.usbport, videomemory: @android_tv.videomemory, warranty: @android_tv.warranty, webcam: @android_tv.webcam, wlan: @android_tv.wlan }
    end

    assert_redirected_to android_tv_path(assigns(:android_tv))
  end

  test "should show android_tv" do
    get :show, id: @android_tv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @android_tv
    assert_response :success
  end

  test "should update android_tv" do
    patch :update, id: @android_tv, android_tv: { audio: @android_tv.audio, audioports: @android_tv.audioports, battery: @android_tv.battery, bluetooth: @android_tv.bluetooth, brand: @android_tv.brand, builtinstorage: @android_tv.builtinstorage, cardreader: @android_tv.cardreader, code: @android_tv.code, cores: @android_tv.cores, cpuspeed: @android_tv.cpuspeed, cputype: @android_tv.cputype, gpuvpu: @android_tv.gpuvpu, hdmi: @android_tv.hdmi, lcdfeatures: @android_tv.lcdfeatures, memory: @android_tv.memory, name: @android_tv.name, opticaldrive: @android_tv.opticaldrive, os: @android_tv.os, otherfeatures: @android_tv.otherfeatures, price: @android_tv.price, resolution: @android_tv.resolution, screensize: @android_tv.screensize, series: @android_tv.series, service: @android_tv.service, tech: @android_tv.tech, touchscreen: @android_tv.touchscreen, tvmodel: @android_tv.tvmodel, usbport: @android_tv.usbport, videomemory: @android_tv.videomemory, warranty: @android_tv.warranty, webcam: @android_tv.webcam, wlan: @android_tv.wlan }
    assert_redirected_to android_tv_path(assigns(:android_tv))
  end

  test "should destroy android_tv" do
    assert_difference('AndroidTv.count', -1) do
      delete :destroy, id: @android_tv
    end

    assert_redirected_to android_tvs_path
  end
end
