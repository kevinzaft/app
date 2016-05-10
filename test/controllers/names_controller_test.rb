require 'test_helper'

class NamesControllerTest < ActionController::TestCase
  setup do
    @name = names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name" do
    assert_difference('Name.count') do
      post :create, name: { auxport: @name.auxport, brand: @name.brand, channels: @name.channels, chipset: @name.chipset, code: @name.code, digitalaudio: @name.digitalaudio, dimension: @name.dimension, features: @name.features, interface: @name.interface, linein: @name.linein, lineout: @name.lineout, mic: @name.mic, model: @name.model, os: @name.os, other: @name.other, otherport: @name.otherport, packagecontents: @name.packagecontents, plug: @name.plug, price: @name.price, samplerate: @name.samplerate, snr: @name.snr, spdif: @name.spdif, systemrequirements: @name.systemrequirements, weight: @name.weight }
    end

    assert_redirected_to name_path(assigns(:name))
  end

  test "should show name" do
    get :show, id: @name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name
    assert_response :success
  end

  test "should update name" do
    patch :update, id: @name, name: { auxport: @name.auxport, brand: @name.brand, channels: @name.channels, chipset: @name.chipset, code: @name.code, digitalaudio: @name.digitalaudio, dimension: @name.dimension, features: @name.features, interface: @name.interface, linein: @name.linein, lineout: @name.lineout, mic: @name.mic, model: @name.model, os: @name.os, other: @name.other, otherport: @name.otherport, packagecontents: @name.packagecontents, plug: @name.plug, price: @name.price, samplerate: @name.samplerate, snr: @name.snr, spdif: @name.spdif, systemrequirements: @name.systemrequirements, weight: @name.weight }
    assert_redirected_to name_path(assigns(:name))
  end

  test "should destroy name" do
    assert_difference('Name.count', -1) do
      delete :destroy, id: @name
    end

    assert_redirected_to names_path
  end
end
