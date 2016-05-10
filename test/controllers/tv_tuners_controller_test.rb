require 'test_helper'

class TvTunersControllerTest < ActionController::TestCase
  setup do
    @tv_tuner = tv_tuners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tv_tuners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv_tuner" do
    assert_difference('TvTuner.count') do
      post :create, tv_tuner: { availableslot: @tv_tuner.availableslot, brand: @tv_tuner.brand, code: @tv_tuner.code, features: @tv_tuner.features, fmtuner: @tv_tuner.fmtuner, graphicscard: @tv_tuner.graphicscard, lowprofileready: @tv_tuner.lowprofileready, model: @tv_tuner.model, name: @tv_tuner.name, os: @tv_tuner.os, other: @tv_tuner.other, packagecontent: @tv_tuner.packagecontent, portsin: @tv_tuner.portsin, price: @tv_tuner.price, processor: @tv_tuner.processor, remotecontrol: @tv_tuner.remotecontrol, systemrequirments: @tv_tuner.systemrequirments, tunerinterface: @tv_tuner.tunerinterface, tvstandards: @tv_tuner.tvstandards, tvtuner: @tv_tuner.tvtuner, type: @tv_tuner.type, videoencoding: @tv_tuner.videoencoding, videoformat: @tv_tuner.videoformat }
    end

    assert_redirected_to tv_tuner_path(assigns(:tv_tuner))
  end

  test "should show tv_tuner" do
    get :show, id: @tv_tuner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tv_tuner
    assert_response :success
  end

  test "should update tv_tuner" do
    patch :update, id: @tv_tuner, tv_tuner: { availableslot: @tv_tuner.availableslot, brand: @tv_tuner.brand, code: @tv_tuner.code, features: @tv_tuner.features, fmtuner: @tv_tuner.fmtuner, graphicscard: @tv_tuner.graphicscard, lowprofileready: @tv_tuner.lowprofileready, model: @tv_tuner.model, name: @tv_tuner.name, os: @tv_tuner.os, other: @tv_tuner.other, packagecontent: @tv_tuner.packagecontent, portsin: @tv_tuner.portsin, price: @tv_tuner.price, processor: @tv_tuner.processor, remotecontrol: @tv_tuner.remotecontrol, systemrequirments: @tv_tuner.systemrequirments, tunerinterface: @tv_tuner.tunerinterface, tvstandards: @tv_tuner.tvstandards, tvtuner: @tv_tuner.tvtuner, type: @tv_tuner.type, videoencoding: @tv_tuner.videoencoding, videoformat: @tv_tuner.videoformat }
    assert_redirected_to tv_tuner_path(assigns(:tv_tuner))
  end

  test "should destroy tv_tuner" do
    assert_difference('TvTuner.count', -1) do
      delete :destroy, id: @tv_tuner
    end

    assert_redirected_to tv_tuners_path
  end
end
