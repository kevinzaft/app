require 'test_helper'

class VideoCardsControllerTest < ActionController::TestCase
  setup do
    @video_card = video_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_card" do
    assert_difference('VideoCard.count') do
      post :create, video_card: { boostclock: @video_card.boostclock, brand: @video_card.brand, cardmodel: @video_card.cardmodel, chipsetmanufacturer: @video_card.chipsetmanufacturer, code: @video_card.code, cooler: @video_card.cooler, coreclock: @video_card.coreclock, cudacores: @video_card.cudacores, dimensions: @video_card.dimensions, directx: @video_card.directx, displayport: @video_card.displayport, duallinkdvi: @video_card.duallinkdvi, dvi: @video_card.dvi, features: @video_card.features, gpu: @video_card.gpu, hdcpready: @video_card.hdcpready, hdmiport: @video_card.hdmiport, interface: @video_card.interface, maxres: @video_card.maxres, memoryclock: @video_card.memoryclock, memoryinterface: @video_card.memoryinterface, memorysize: @video_card.memorysize, memorytype: @video_card.memorytype, multimonitorsupport: @video_card.multimonitorsupport, name: @video_card.name, opengl: @video_card.opengl, other: @video_card.other, package: @video_card.package, powerconnector: @video_card.powerconnector, price: @video_card.price, ramdac: @video_card.ramdac, slisupport: @video_card.slisupport, slotwidth: @video_card.slotwidth, systemrequirements: @video_card.systemrequirements, threedvisionready: @video_card.threedvisionready, videocardtype: @video_card.videocardtype, virtualrealityready: @video_card.virtualrealityready, warranty: @video_card.warranty }
    end

    assert_redirected_to video_card_path(assigns(:video_card))
  end

  test "should show video_card" do
    get :show, id: @video_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_card
    assert_response :success
  end

  test "should update video_card" do
    patch :update, id: @video_card, video_card: { boostclock: @video_card.boostclock, brand: @video_card.brand, cardmodel: @video_card.cardmodel, chipsetmanufacturer: @video_card.chipsetmanufacturer, code: @video_card.code, cooler: @video_card.cooler, coreclock: @video_card.coreclock, cudacores: @video_card.cudacores, dimensions: @video_card.dimensions, directx: @video_card.directx, displayport: @video_card.displayport, duallinkdvi: @video_card.duallinkdvi, dvi: @video_card.dvi, features: @video_card.features, gpu: @video_card.gpu, hdcpready: @video_card.hdcpready, hdmiport: @video_card.hdmiport, interface: @video_card.interface, maxres: @video_card.maxres, memoryclock: @video_card.memoryclock, memoryinterface: @video_card.memoryinterface, memorysize: @video_card.memorysize, memorytype: @video_card.memorytype, multimonitorsupport: @video_card.multimonitorsupport, name: @video_card.name, opengl: @video_card.opengl, other: @video_card.other, package: @video_card.package, powerconnector: @video_card.powerconnector, price: @video_card.price, ramdac: @video_card.ramdac, slisupport: @video_card.slisupport, slotwidth: @video_card.slotwidth, systemrequirements: @video_card.systemrequirements, threedvisionready: @video_card.threedvisionready, videocardtype: @video_card.videocardtype, virtualrealityready: @video_card.virtualrealityready, warranty: @video_card.warranty }
    assert_redirected_to video_card_path(assigns(:video_card))
  end

  test "should destroy video_card" do
    assert_difference('VideoCard.count', -1) do
      delete :destroy, id: @video_card
    end

    assert_redirected_to video_cards_path
  end
end
