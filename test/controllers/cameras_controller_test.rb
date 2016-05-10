require 'test_helper'

class CamerasControllerTest < ActionController::TestCase
  setup do
    @camera = cameras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cameras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camera" do
    assert_difference('Camera.count') do
      post :create, camera: { cameramodel: @camera.cameramodel, code: @camera.code, details: @camera.details, drive: @camera.drive, exposure: @camera.exposure, flash: @camera.flash, focus: @camera.focus, function: @camera.function, imagesensor: @camera.imagesensor, lcdmonitor: @camera.lcdmonitor, lens: @camera.lens, movie: @camera.movie, name: @camera.name, other: @camera.other, price: @camera.price, recording: @camera.recording, shutter: @camera.shutter, viewfinder: @camera.viewfinder, warranty: @camera.warranty, whitebalance: @camera.whitebalance }
    end

    assert_redirected_to camera_path(assigns(:camera))
  end

  test "should show camera" do
    get :show, id: @camera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camera
    assert_response :success
  end

  test "should update camera" do
    patch :update, id: @camera, camera: { cameramodel: @camera.cameramodel, code: @camera.code, details: @camera.details, drive: @camera.drive, exposure: @camera.exposure, flash: @camera.flash, focus: @camera.focus, function: @camera.function, imagesensor: @camera.imagesensor, lcdmonitor: @camera.lcdmonitor, lens: @camera.lens, movie: @camera.movie, name: @camera.name, other: @camera.other, price: @camera.price, recording: @camera.recording, shutter: @camera.shutter, viewfinder: @camera.viewfinder, warranty: @camera.warranty, whitebalance: @camera.whitebalance }
    assert_redirected_to camera_path(assigns(:camera))
  end

  test "should destroy camera" do
    assert_difference('Camera.count', -1) do
      delete :destroy, id: @camera
    end

    assert_redirected_to cameras_path
  end
end
