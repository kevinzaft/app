require 'test_helper'

class NetworkDvrsControllerTest < ActionController::TestCase
  setup do
    @network_dvr = network_dvrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:network_dvrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create network_dvr" do
    assert_difference('NetworkDvr.count') do
      post :create, network_dvr: { brand: @network_dvr.brand, brandmodel: @network_dvr.brandmodel, code: @network_dvr.code, compressionformat: @network_dvr.compressionformat, dimensions: @network_dvr.dimensions, framerate: @network_dvr.framerate, humidity: @network_dvr.humidity, name: @network_dvr.name, networkinterface: @network_dvr.networkinterface, other: @network_dvr.other, powersupply: @network_dvr.powersupply, price: @network_dvr.price, storagecapacity: @network_dvr.storagecapacity, supportedprotocols: @network_dvr.supportedprotocols, temerature: @network_dvr.temerature, videoinput: @network_dvr.videoinput, videooutput: @network_dvr.videooutput, warranty: @network_dvr.warranty, weight: @network_dvr.weight }
    end

    assert_redirected_to network_dvr_path(assigns(:network_dvr))
  end

  test "should show network_dvr" do
    get :show, id: @network_dvr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @network_dvr
    assert_response :success
  end

  test "should update network_dvr" do
    patch :update, id: @network_dvr, network_dvr: { brand: @network_dvr.brand, brandmodel: @network_dvr.brandmodel, code: @network_dvr.code, compressionformat: @network_dvr.compressionformat, dimensions: @network_dvr.dimensions, framerate: @network_dvr.framerate, humidity: @network_dvr.humidity, name: @network_dvr.name, networkinterface: @network_dvr.networkinterface, other: @network_dvr.other, powersupply: @network_dvr.powersupply, price: @network_dvr.price, storagecapacity: @network_dvr.storagecapacity, supportedprotocols: @network_dvr.supportedprotocols, temerature: @network_dvr.temerature, videoinput: @network_dvr.videoinput, videooutput: @network_dvr.videooutput, warranty: @network_dvr.warranty, weight: @network_dvr.weight }
    assert_redirected_to network_dvr_path(assigns(:network_dvr))
  end

  test "should destroy network_dvr" do
    assert_difference('NetworkDvr.count', -1) do
      delete :destroy, id: @network_dvr
    end

    assert_redirected_to network_dvrs_path
  end
end
