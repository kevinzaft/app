require 'test_helper'

class TvsControllerTest < ActionController::TestCase
  setup do
    @tv = tvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv" do
    assert_difference('Tv.count') do
      post :create, tv: { aspectratio: @tv.aspectratio, audio: @tv.audio, brand: @tv.brand, brightness: @tv.brightness, code: @tv.code, componentvideo: @tv.componentvideo, contrastratio: @tv.contrastratio, digiatlaudio: @tv.digiatlaudio, dimension: @tv.dimension, displaycolor: @tv.displaycolor, features: @tv.features, hdmi: @tv.hdmi, maxres: @tv.maxres, mount: @tv.mount, name: @tv.name, other: @tv.other, otherconnectors: @tv.otherconnectors, power: @tv.power, price: @tv.price, refreshrate: @tv.refreshrate, response: @tv.response, screensize: @tv.screensize, tuner: @tv.tuner, tvmodel: @tv.tvmodel, usb: @tv.usb, video: @tv.video, warranty: @tv.warranty, weight: @tv.weight }
    end

    assert_redirected_to tv_path(assigns(:tv))
  end

  test "should show tv" do
    get :show, id: @tv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tv
    assert_response :success
  end

  test "should update tv" do
    patch :update, id: @tv, tv: { aspectratio: @tv.aspectratio, audio: @tv.audio, brand: @tv.brand, brightness: @tv.brightness, code: @tv.code, componentvideo: @tv.componentvideo, contrastratio: @tv.contrastratio, digiatlaudio: @tv.digiatlaudio, dimension: @tv.dimension, displaycolor: @tv.displaycolor, features: @tv.features, hdmi: @tv.hdmi, maxres: @tv.maxres, mount: @tv.mount, name: @tv.name, other: @tv.other, otherconnectors: @tv.otherconnectors, power: @tv.power, price: @tv.price, refreshrate: @tv.refreshrate, response: @tv.response, screensize: @tv.screensize, tuner: @tv.tuner, tvmodel: @tv.tvmodel, usb: @tv.usb, video: @tv.video, warranty: @tv.warranty, weight: @tv.weight }
    assert_redirected_to tv_path(assigns(:tv))
  end

  test "should destroy tv" do
    assert_difference('Tv.count', -1) do
      delete :destroy, id: @tv
    end

    assert_redirected_to tvs_path
  end
end
