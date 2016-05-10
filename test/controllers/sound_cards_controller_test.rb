require 'test_helper'

class SoundCardsControllerTest < ActionController::TestCase
  setup do
    @sound_card = sound_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sound_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sound_card" do
    assert_difference('SoundCard.count') do
      post :create, sound_card: { auxport: @sound_card.auxport, brand: @sound_card.brand, channels: @sound_card.channels, chipset: @sound_card.chipset, code: @sound_card.code, digitalaudio: @sound_card.digitalaudio, dimension: @sound_card.dimension, features: @sound_card.features, interface: @sound_card.interface, linein: @sound_card.linein, lineout: @sound_card.lineout, mic: @sound_card.mic, model: @sound_card.model, name: @sound_card.name, os: @sound_card.os, other: @sound_card.other, otherport: @sound_card.otherport, packagecontents: @sound_card.packagecontents, plug: @sound_card.plug, price: @sound_card.price, samplerate: @sound_card.samplerate, snr: @sound_card.snr, spdif: @sound_card.spdif, systemrequirements: @sound_card.systemrequirements, weight: @sound_card.weight }
    end

    assert_redirected_to sound_card_path(assigns(:sound_card))
  end

  test "should show sound_card" do
    get :show, id: @sound_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sound_card
    assert_response :success
  end

  test "should update sound_card" do
    patch :update, id: @sound_card, sound_card: { auxport: @sound_card.auxport, brand: @sound_card.brand, channels: @sound_card.channels, chipset: @sound_card.chipset, code: @sound_card.code, digitalaudio: @sound_card.digitalaudio, dimension: @sound_card.dimension, features: @sound_card.features, interface: @sound_card.interface, linein: @sound_card.linein, lineout: @sound_card.lineout, mic: @sound_card.mic, model: @sound_card.model, name: @sound_card.name, os: @sound_card.os, other: @sound_card.other, otherport: @sound_card.otherport, packagecontents: @sound_card.packagecontents, plug: @sound_card.plug, price: @sound_card.price, samplerate: @sound_card.samplerate, snr: @sound_card.snr, spdif: @sound_card.spdif, systemrequirements: @sound_card.systemrequirements, weight: @sound_card.weight }
    assert_redirected_to sound_card_path(assigns(:sound_card))
  end

  test "should destroy sound_card" do
    assert_difference('SoundCard.count', -1) do
      delete :destroy, id: @sound_card
    end

    assert_redirected_to sound_cards_path
  end
end
