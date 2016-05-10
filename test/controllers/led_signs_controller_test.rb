require 'test_helper'

class LedSignsControllerTest < ActionController::TestCase
  setup do
    @led_sign = led_signs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:led_signs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create led_sign" do
    assert_difference('LedSign.count') do
      post :create, led_sign: { code: @led_sign.code, colors: @led_sign.colors, datatransfer: @led_sign.datatransfer, dimensions: @led_sign.dimensions, features: @led_sign.features, name: @led_sign.name, other: @led_sign.other, price: @led_sign.price, signmodel: @led_sign.signmodel, volts: @led_sign.volts, weight: @led_sign.weight }
    end

    assert_redirected_to led_sign_path(assigns(:led_sign))
  end

  test "should show led_sign" do
    get :show, id: @led_sign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @led_sign
    assert_response :success
  end

  test "should update led_sign" do
    patch :update, id: @led_sign, led_sign: { code: @led_sign.code, colors: @led_sign.colors, datatransfer: @led_sign.datatransfer, dimensions: @led_sign.dimensions, features: @led_sign.features, name: @led_sign.name, other: @led_sign.other, price: @led_sign.price, signmodel: @led_sign.signmodel, volts: @led_sign.volts, weight: @led_sign.weight }
    assert_redirected_to led_sign_path(assigns(:led_sign))
  end

  test "should destroy led_sign" do
    assert_difference('LedSign.count', -1) do
      delete :destroy, id: @led_sign
    end

    assert_redirected_to led_signs_path
  end
end
