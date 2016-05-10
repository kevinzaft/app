require 'test_helper'

class AmplifiersControllerTest < ActionController::TestCase
  setup do
    @amplifier = amplifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amplifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amplifier" do
    assert_difference('Amplifier.count') do
      post :create, amplifier: { brand: @amplifier.brand, brandmodel: @amplifier.brandmodel, code: @amplifier.code, dimensions: @amplifier.dimensions, features: @amplifier.features, name: @amplifier.name, other: @amplifier.other, price: @amplifier.price, specification: @amplifier.specification, warranty: @amplifier.warranty, weight: @amplifier.weight }
    end

    assert_redirected_to amplifier_path(assigns(:amplifier))
  end

  test "should show amplifier" do
    get :show, id: @amplifier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amplifier
    assert_response :success
  end

  test "should update amplifier" do
    patch :update, id: @amplifier, amplifier: { brand: @amplifier.brand, brandmodel: @amplifier.brandmodel, code: @amplifier.code, dimensions: @amplifier.dimensions, features: @amplifier.features, name: @amplifier.name, other: @amplifier.other, price: @amplifier.price, specification: @amplifier.specification, warranty: @amplifier.warranty, weight: @amplifier.weight }
    assert_redirected_to amplifier_path(assigns(:amplifier))
  end

  test "should destroy amplifier" do
    assert_difference('Amplifier.count', -1) do
      delete :destroy, id: @amplifier
    end

    assert_redirected_to amplifiers_path
  end
end
