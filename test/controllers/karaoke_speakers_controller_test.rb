require 'test_helper'

class KaraokeSpeakersControllerTest < ActionController::TestCase
  setup do
    @karaoke_speaker = karaoke_speakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:karaoke_speakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create karaoke_speaker" do
    assert_difference('KaraokeSpeaker.count') do
      post :create, karaoke_speaker: { brand: @karaoke_speaker.brand, brandmodel: @karaoke_speaker.brandmodel, code: @karaoke_speaker.code, dimensions: @karaoke_speaker.dimensions, driverunits: @karaoke_speaker.driverunits, features: @karaoke_speaker.features, frequencyresponse: @karaoke_speaker.frequencyresponse, name: @karaoke_speaker.name, nominalimpedance: @karaoke_speaker.nominalimpedance, other: @karaoke_speaker.other, price: @karaoke_speaker.price, sensitivity: @karaoke_speaker.sensitivity, soldas: @karaoke_speaker.soldas, type: @karaoke_speaker.type, warranty: @karaoke_speaker.warranty, weight: @karaoke_speaker.weight }
    end

    assert_redirected_to karaoke_speaker_path(assigns(:karaoke_speaker))
  end

  test "should show karaoke_speaker" do
    get :show, id: @karaoke_speaker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @karaoke_speaker
    assert_response :success
  end

  test "should update karaoke_speaker" do
    patch :update, id: @karaoke_speaker, karaoke_speaker: { brand: @karaoke_speaker.brand, brandmodel: @karaoke_speaker.brandmodel, code: @karaoke_speaker.code, dimensions: @karaoke_speaker.dimensions, driverunits: @karaoke_speaker.driverunits, features: @karaoke_speaker.features, frequencyresponse: @karaoke_speaker.frequencyresponse, name: @karaoke_speaker.name, nominalimpedance: @karaoke_speaker.nominalimpedance, other: @karaoke_speaker.other, price: @karaoke_speaker.price, sensitivity: @karaoke_speaker.sensitivity, soldas: @karaoke_speaker.soldas, type: @karaoke_speaker.type, warranty: @karaoke_speaker.warranty, weight: @karaoke_speaker.weight }
    assert_redirected_to karaoke_speaker_path(assigns(:karaoke_speaker))
  end

  test "should destroy karaoke_speaker" do
    assert_difference('KaraokeSpeaker.count', -1) do
      delete :destroy, id: @karaoke_speaker
    end

    assert_redirected_to karaoke_speakers_path
  end
end
