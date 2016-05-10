require 'test_helper'

class BlurayStoragesControllerTest < ActionController::TestCase
  setup do
    @bluray_storage = bluray_storages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bluray_storages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bluray_storage" do
    assert_difference('BlurayStorage.count') do
      post :create, bluray_storage: { brand: @bluray_storage.brand, brandmodel: @bluray_storage.brandmodel, capacity: @bluray_storage.capacity, code: @bluray_storage.code, features: @bluray_storage.features, maxspeedsupported: @bluray_storage.maxspeedsupported, name: @bluray_storage.name, other: @bluray_storage.other, packaging: @bluray_storage.packaging, price: @bluray_storage.price, quantity: @bluray_storage.quantity, storagetype: @bluray_storage.storagetype, surfacetop: @bluray_storage.surfacetop }
    end

    assert_redirected_to bluray_storage_path(assigns(:bluray_storage))
  end

  test "should show bluray_storage" do
    get :show, id: @bluray_storage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bluray_storage
    assert_response :success
  end

  test "should update bluray_storage" do
    patch :update, id: @bluray_storage, bluray_storage: { brand: @bluray_storage.brand, brandmodel: @bluray_storage.brandmodel, capacity: @bluray_storage.capacity, code: @bluray_storage.code, features: @bluray_storage.features, maxspeedsupported: @bluray_storage.maxspeedsupported, name: @bluray_storage.name, other: @bluray_storage.other, packaging: @bluray_storage.packaging, price: @bluray_storage.price, quantity: @bluray_storage.quantity, storagetype: @bluray_storage.storagetype, surfacetop: @bluray_storage.surfacetop }
    assert_redirected_to bluray_storage_path(assigns(:bluray_storage))
  end

  test "should destroy bluray_storage" do
    assert_difference('BlurayStorage.count', -1) do
      delete :destroy, id: @bluray_storage
    end

    assert_redirected_to bluray_storages_path
  end
end
