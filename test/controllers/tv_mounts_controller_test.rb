require 'test_helper'

class TvMountsControllerTest < ActionController::TestCase
  setup do
    @tv_mount = tv_mounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tv_mounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv_mount" do
    assert_difference('TvMount.count') do
      post :create, tv_mount: { brand: @tv_mount.brand, brandmodel: @tv_mount.brandmodel, code: @tv_mount.code, dimensions: @tv_mount.dimensions, features: @tv_mount.features, name: @tv_mount.name, other: @tv_mount.other, price: @tv_mount.price, tvsizecapacity: @tv_mount.tvsizecapacity, tvweightcapacity: @tv_mount.tvweightcapacity, vesacompatible: @tv_mount.vesacompatible, warranty: @tv_mount.warranty, weight: @tv_mount.weight }
    end

    assert_redirected_to tv_mount_path(assigns(:tv_mount))
  end

  test "should show tv_mount" do
    get :show, id: @tv_mount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tv_mount
    assert_response :success
  end

  test "should update tv_mount" do
    patch :update, id: @tv_mount, tv_mount: { brand: @tv_mount.brand, brandmodel: @tv_mount.brandmodel, code: @tv_mount.code, dimensions: @tv_mount.dimensions, features: @tv_mount.features, name: @tv_mount.name, other: @tv_mount.other, price: @tv_mount.price, tvsizecapacity: @tv_mount.tvsizecapacity, tvweightcapacity: @tv_mount.tvweightcapacity, vesacompatible: @tv_mount.vesacompatible, warranty: @tv_mount.warranty, weight: @tv_mount.weight }
    assert_redirected_to tv_mount_path(assigns(:tv_mount))
  end

  test "should destroy tv_mount" do
    assert_difference('TvMount.count', -1) do
      delete :destroy, id: @tv_mount
    end

    assert_redirected_to tv_mounts_path
  end
end
