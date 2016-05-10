require 'test_helper'

class SurveillanceCablesControllerTest < ActionController::TestCase
  setup do
    @surveillance_cable = surveillance_cables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveillance_cables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surveillance_cable" do
    assert_difference('SurveillanceCable.count') do
      post :create, surveillance_cable: { brand: @surveillance_cable.brand, brandmodel: @surveillance_cable.brandmodel, cat: @surveillance_cable.cat, code: @surveillance_cable.code, color: @surveillance_cable.color, features: @surveillance_cable.features, length: @surveillance_cable.length, name: @surveillance_cable.name, other: @surveillance_cable.other, price: @surveillance_cable.price, shielded: @surveillance_cable.shielded }
    end

    assert_redirected_to surveillance_cable_path(assigns(:surveillance_cable))
  end

  test "should show surveillance_cable" do
    get :show, id: @surveillance_cable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surveillance_cable
    assert_response :success
  end

  test "should update surveillance_cable" do
    patch :update, id: @surveillance_cable, surveillance_cable: { brand: @surveillance_cable.brand, brandmodel: @surveillance_cable.brandmodel, cat: @surveillance_cable.cat, code: @surveillance_cable.code, color: @surveillance_cable.color, features: @surveillance_cable.features, length: @surveillance_cable.length, name: @surveillance_cable.name, other: @surveillance_cable.other, price: @surveillance_cable.price, shielded: @surveillance_cable.shielded }
    assert_redirected_to surveillance_cable_path(assigns(:surveillance_cable))
  end

  test "should destroy surveillance_cable" do
    assert_difference('SurveillanceCable.count', -1) do
      delete :destroy, id: @surveillance_cable
    end

    assert_redirected_to surveillance_cables_path
  end
end
