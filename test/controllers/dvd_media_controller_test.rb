require 'test_helper'

class DvdMediaControllerTest < ActionController::TestCase
  setup do
    @dvd_medium = dvd_media(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dvd_media)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dvd_medium" do
    assert_difference('DvdMedium.count') do
      post :create, dvd_medium: { brand: @dvd_medium.brand, brandmodel: @dvd_medium.brandmodel, capacity: @dvd_medium.capacity, code: @dvd_medium.code, features: @dvd_medium.features, maxspeedsupported: @dvd_medium.maxspeedsupported, mediatype: @dvd_medium.mediatype, name: @dvd_medium.name, other: @dvd_medium.other, packaging: @dvd_medium.packaging, price: @dvd_medium.price, quantity: @dvd_medium.quantity }
    end

    assert_redirected_to dvd_medium_path(assigns(:dvd_medium))
  end

  test "should show dvd_medium" do
    get :show, id: @dvd_medium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dvd_medium
    assert_response :success
  end

  test "should update dvd_medium" do
    patch :update, id: @dvd_medium, dvd_medium: { brand: @dvd_medium.brand, brandmodel: @dvd_medium.brandmodel, capacity: @dvd_medium.capacity, code: @dvd_medium.code, features: @dvd_medium.features, maxspeedsupported: @dvd_medium.maxspeedsupported, mediatype: @dvd_medium.mediatype, name: @dvd_medium.name, other: @dvd_medium.other, packaging: @dvd_medium.packaging, price: @dvd_medium.price, quantity: @dvd_medium.quantity }
    assert_redirected_to dvd_medium_path(assigns(:dvd_medium))
  end

  test "should destroy dvd_medium" do
    assert_difference('DvdMedium.count', -1) do
      delete :destroy, id: @dvd_medium
    end

    assert_redirected_to dvd_media_path
  end
end
