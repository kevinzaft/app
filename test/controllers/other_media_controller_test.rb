require 'test_helper'

class OtherMediaControllerTest < ActionController::TestCase
  setup do
    @other_medium = other_media(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:other_media)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create other_medium" do
    assert_difference('OtherMedium.count') do
      post :create, other_medium: { brand: @other_medium.brand, brandmodel: @other_medium.brandmodel, capacity: @other_medium.capacity, code: @other_medium.code, features: @other_medium.features, maxspeedsupported: @other_medium.maxspeedsupported, mediatype: @other_medium.mediatype, name: @other_medium.name, other: @other_medium.other, packaging: @other_medium.packaging, price: @other_medium.price, quantity: @other_medium.quantity }
    end

    assert_redirected_to other_medium_path(assigns(:other_medium))
  end

  test "should show other_medium" do
    get :show, id: @other_medium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @other_medium
    assert_response :success
  end

  test "should update other_medium" do
    patch :update, id: @other_medium, other_medium: { brand: @other_medium.brand, brandmodel: @other_medium.brandmodel, capacity: @other_medium.capacity, code: @other_medium.code, features: @other_medium.features, maxspeedsupported: @other_medium.maxspeedsupported, mediatype: @other_medium.mediatype, name: @other_medium.name, other: @other_medium.other, packaging: @other_medium.packaging, price: @other_medium.price, quantity: @other_medium.quantity }
    assert_redirected_to other_medium_path(assigns(:other_medium))
  end

  test "should destroy other_medium" do
    assert_difference('OtherMedium.count', -1) do
      delete :destroy, id: @other_medium
    end

    assert_redirected_to other_media_path
  end
end
