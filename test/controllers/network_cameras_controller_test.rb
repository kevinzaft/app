require 'test_helper'

class NetworkCamerasControllerTest < ActionController::TestCase
  setup do
    @network_camera = network_cameras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:network_cameras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create network_camera" do
    assert_difference('NetworkCamera.count') do
      post :create, network_camera: { brand: @network_camera.brand, brandmodel: @network_camera.brandmodel, cameratype: @network_camera.cameratype, code: @network_camera.code, connectiontype: @network_camera.connectiontype, features: @network_camera.features, framerate: @network_camera.framerate, lenstype: @network_camera.lenstype, maxres: @network_camera.maxres, name: @network_camera.name, networkingprotocol: @network_camera.networkingprotocol, os: @network_camera.os, other: @network_camera.other, ports: @network_camera.ports, price: @network_camera.price, security: @network_camera.security, sensor: @network_camera.sensor, videocaptureres: @network_camera.videocaptureres, warranty: @network_camera.warranty, wirelessdatarate: @network_camera.wirelessdatarate, wirelessstandard: @network_camera.wirelessstandard, zoom: @network_camera.zoom }
    end

    assert_redirected_to network_camera_path(assigns(:network_camera))
  end

  test "should show network_camera" do
    get :show, id: @network_camera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @network_camera
    assert_response :success
  end

  test "should update network_camera" do
    patch :update, id: @network_camera, network_camera: { brand: @network_camera.brand, brandmodel: @network_camera.brandmodel, cameratype: @network_camera.cameratype, code: @network_camera.code, connectiontype: @network_camera.connectiontype, features: @network_camera.features, framerate: @network_camera.framerate, lenstype: @network_camera.lenstype, maxres: @network_camera.maxres, name: @network_camera.name, networkingprotocol: @network_camera.networkingprotocol, os: @network_camera.os, other: @network_camera.other, ports: @network_camera.ports, price: @network_camera.price, security: @network_camera.security, sensor: @network_camera.sensor, videocaptureres: @network_camera.videocaptureres, warranty: @network_camera.warranty, wirelessdatarate: @network_camera.wirelessdatarate, wirelessstandard: @network_camera.wirelessstandard, zoom: @network_camera.zoom }
    assert_redirected_to network_camera_path(assigns(:network_camera))
  end

  test "should destroy network_camera" do
    assert_difference('NetworkCamera.count', -1) do
      delete :destroy, id: @network_camera
    end

    assert_redirected_to network_cameras_path
  end
end
