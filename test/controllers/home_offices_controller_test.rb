require 'test_helper'

class HomeOfficesControllerTest < ActionController::TestCase
  setup do
    @home_office = home_offices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_offices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_office" do
    assert_difference('HomeOffice.count') do
      post :create, home_office: { brand: @home_office.brand, brandmodel: @home_office.brandmodel, code: @home_office.code, features: @home_office.features, name: @home_office.name, name: @home_office.name, officetype: @home_office.officetype, os: @home_office.os, other: @home_office.other, price: @home_office.price, systemrequirements: @home_office.systemrequirements, version: @home_office.version, warranty: @home_office.warranty }
    end

    assert_redirected_to home_office_path(assigns(:home_office))
  end

  test "should show home_office" do
    get :show, id: @home_office
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_office
    assert_response :success
  end

  test "should update home_office" do
    patch :update, id: @home_office, home_office: { brand: @home_office.brand, brandmodel: @home_office.brandmodel, code: @home_office.code, features: @home_office.features, name: @home_office.name, name: @home_office.name, officetype: @home_office.officetype, os: @home_office.os, other: @home_office.other, price: @home_office.price, systemrequirements: @home_office.systemrequirements, version: @home_office.version, warranty: @home_office.warranty }
    assert_redirected_to home_office_path(assigns(:home_office))
  end

  test "should destroy home_office" do
    assert_difference('HomeOffice.count', -1) do
      delete :destroy, id: @home_office
    end

    assert_redirected_to home_offices_path
  end
end
