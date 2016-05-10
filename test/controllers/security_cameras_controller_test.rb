require 'test_helper'

class SecurityCamerasControllerTest < ActionController::TestCase
  setup do
    @security_camera = security_cameras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:security_cameras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security_camera" do
    assert_difference('SecurityCamera.count') do
      post :create, security_camera: { brand: @security_camera.brand, brandmodel: @security_camera.brandmodel, cameratype: @security_camera.cameratype, code: @security_camera.code, color: @security_camera.color, features: @security_camera.features, lenstype: @security_camera.lenstype, maxres: @security_camera.maxres, name: @security_camera.name, nightvision: @security_camera.nightvision, other: @security_camera.other, package: @security_camera.package, price: @security_camera.price, securitycameratype: @security_camera.securitycameratype, sensor: @security_camera.sensor, shuttercontrol: @security_camera.shuttercontrol, videocaptureres: @security_camera.videocaptureres, warranty: @security_camera.warranty, wirelessdatarate: @security_camera.wirelessdatarate }
    end

    assert_redirected_to security_camera_path(assigns(:security_camera))
  end

  test "should show security_camera" do
    get :show, id: @security_camera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @security_camera
    assert_response :success
  end

  test "should update security_camera" do
    patch :update, id: @security_camera, security_camera: { brand: @security_camera.brand, brandmodel: @security_camera.brandmodel, cameratype: @security_camera.cameratype, code: @security_camera.code, color: @security_camera.color, features: @security_camera.features, lenstype: @security_camera.lenstype, maxres: @security_camera.maxres, name: @security_camera.name, nightvision: @security_camera.nightvision, other: @security_camera.other, package: @security_camera.package, price: @security_camera.price, securitycameratype: @security_camera.securitycameratype, sensor: @security_camera.sensor, shuttercontrol: @security_camera.shuttercontrol, videocaptureres: @security_camera.videocaptureres, warranty: @security_camera.warranty, wirelessdatarate: @security_camera.wirelessdatarate }
    assert_redirected_to security_camera_path(assigns(:security_camera))
  end

  test "should destroy security_camera" do
    assert_difference('SecurityCamera.count', -1) do
      delete :destroy, id: @security_camera
    end

    assert_redirected_to security_cameras_path
  end
end
