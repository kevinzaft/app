require 'test_helper'

class HomeTheaterSystemsControllerTest < ActionController::TestCase
  setup do
    @home_theater_system = home_theater_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_theater_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_theater_system" do
    assert_difference('HomeTheaterSystem.count') do
      post :create, home_theater_system: { brand: @home_theater_system.brand, channels: @home_theater_system.channels, code: @home_theater_system.code, dimensions: @home_theater_system.dimensions, features: @home_theater_system.features, homemodel: @home_theater_system.homemodel, name: @home_theater_system.name, other: @home_theater_system.other, price: @home_theater_system.price, speakerfrequency: @home_theater_system.speakerfrequency, speakerpowerrating: @home_theater_system.speakerpowerrating, warranty: @home_theater_system.warranty }
    end

    assert_redirected_to home_theater_system_path(assigns(:home_theater_system))
  end

  test "should show home_theater_system" do
    get :show, id: @home_theater_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_theater_system
    assert_response :success
  end

  test "should update home_theater_system" do
    patch :update, id: @home_theater_system, home_theater_system: { brand: @home_theater_system.brand, channels: @home_theater_system.channels, code: @home_theater_system.code, dimensions: @home_theater_system.dimensions, features: @home_theater_system.features, homemodel: @home_theater_system.homemodel, name: @home_theater_system.name, other: @home_theater_system.other, price: @home_theater_system.price, speakerfrequency: @home_theater_system.speakerfrequency, speakerpowerrating: @home_theater_system.speakerpowerrating, warranty: @home_theater_system.warranty }
    assert_redirected_to home_theater_system_path(assigns(:home_theater_system))
  end

  test "should destroy home_theater_system" do
    assert_difference('HomeTheaterSystem.count', -1) do
      delete :destroy, id: @home_theater_system
    end

    assert_redirected_to home_theater_systems_path
  end
end
