require 'test_helper'

class CdMediaControllerTest < ActionController::TestCase
  setup do
    @cd_medium = cd_media(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cd_media)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cd_medium" do
    assert_difference('CdMedium.count') do
      post :create, cd_medium: { brand: @cd_medium.brand, brandmodel: @cd_medium.brandmodel, capacity: @cd_medium.capacity, code: @cd_medium.code, features: @cd_medium.features, maxspeedsupported: @cd_medium.maxspeedsupported, mediatype: @cd_medium.mediatype, name: @cd_medium.name, other: @cd_medium.other, packaging: @cd_medium.packaging, price: @cd_medium.price, quantity: @cd_medium.quantity, recordtime: @cd_medium.recordtime }
    end

    assert_redirected_to cd_medium_path(assigns(:cd_medium))
  end

  test "should show cd_medium" do
    get :show, id: @cd_medium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cd_medium
    assert_response :success
  end

  test "should update cd_medium" do
    patch :update, id: @cd_medium, cd_medium: { brand: @cd_medium.brand, brandmodel: @cd_medium.brandmodel, capacity: @cd_medium.capacity, code: @cd_medium.code, features: @cd_medium.features, maxspeedsupported: @cd_medium.maxspeedsupported, mediatype: @cd_medium.mediatype, name: @cd_medium.name, other: @cd_medium.other, packaging: @cd_medium.packaging, price: @cd_medium.price, quantity: @cd_medium.quantity, recordtime: @cd_medium.recordtime }
    assert_redirected_to cd_medium_path(assigns(:cd_medium))
  end

  test "should destroy cd_medium" do
    assert_difference('CdMedium.count', -1) do
      delete :destroy, id: @cd_medium
    end

    assert_redirected_to cd_media_path
  end
end
