require 'test_helper'

class DesktopComputersControllerTest < ActionController::TestCase
  setup do
    @desktop_computer = desktop_computers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desktop_computers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desktop_computer" do
    assert_difference('DesktopComputer.count') do
      post :create, desktop_computer: { audio: @desktop_computer.audio, audiochannels: @desktop_computer.audiochannels, audiochipset: @desktop_computer.audiochipset, brand: @desktop_computer.brand, brandmodel: @desktop_computer.brandmodel, cacheperprocessor: @desktop_computer.cacheperprocessor, code: @desktop_computer.code, colors: @desktop_computer.colors, cpumainfeatures: @desktop_computer.cpumainfeatures, cpusockettype: @desktop_computer.cpusockettype, cpuspeed: @desktop_computer.cpuspeed, cputype: @desktop_computer.cputype, desktoptype: @desktop_computer.desktoptype, dimensions: @desktop_computer.dimensions, ethernet: @desktop_computer.ethernet, frontusb: @desktop_computer.frontusb, gpuvgatype: @desktop_computer.gpuvgatype, graphics: @desktop_computer.graphics, hdd: @desktop_computer.hdd, hddinterface: @desktop_computer.hddinterface, hddrpm: @desktop_computer.hddrpm, keyboard: @desktop_computer.keyboard, keyboardtype: @desktop_computer.keyboardtype, l2cachepercpu: @desktop_computer.l2cachepercpu, l3cachepercpu: @desktop_computer.l3cachepercpu, lanchipset: @desktop_computer.lanchipset, lanspeed: @desktop_computer.lanspeed, maxmemorysupported: @desktop_computer.maxmemorysupported, memory: @desktop_computer.memory, memorycapacity: @desktop_computer.memorycapacity, memoryslot: @desktop_computer.memoryslot, memoryspec: @desktop_computer.memoryspec, memoryspeed: @desktop_computer.memoryspeed, mouse: @desktop_computer.mouse, mousetype: @desktop_computer.mousetype, name: @desktop_computer.name, opticaldrive: @desktop_computer.opticaldrive, opticaldrivespec: @desktop_computer.opticaldrivespec, opticaldrivetype: @desktop_computer.opticaldrivetype, os: @desktop_computer.os, other: @desktop_computer.other, pcislots: @desktop_computer.pcislots, powersupply: @desktop_computer.powersupply, price: @desktop_computer.price, processor: @desktop_computer.processor, processormainfeatures: @desktop_computer.processormainfeatures, ps2: @desktop_computer.ps2, rearaudioports: @desktop_computer.rearaudioports, rearusb: @desktop_computer.rearusb, rj45: @desktop_computer.rj45, specialfeatures: @desktop_computer.specialfeatures, storage: @desktop_computer.storage, usage: @desktop_computer.usage, videoports: @desktop_computer.videoports, warranty: @desktop_computer.warranty, weight: @desktop_computer.weight }
    end

    assert_redirected_to desktop_computer_path(assigns(:desktop_computer))
  end

  test "should show desktop_computer" do
    get :show, id: @desktop_computer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desktop_computer
    assert_response :success
  end

  test "should update desktop_computer" do
    patch :update, id: @desktop_computer, desktop_computer: { audio: @desktop_computer.audio, audiochannels: @desktop_computer.audiochannels, audiochipset: @desktop_computer.audiochipset, brand: @desktop_computer.brand, brandmodel: @desktop_computer.brandmodel, cacheperprocessor: @desktop_computer.cacheperprocessor, code: @desktop_computer.code, colors: @desktop_computer.colors, cpumainfeatures: @desktop_computer.cpumainfeatures, cpusockettype: @desktop_computer.cpusockettype, cpuspeed: @desktop_computer.cpuspeed, cputype: @desktop_computer.cputype, desktoptype: @desktop_computer.desktoptype, dimensions: @desktop_computer.dimensions, ethernet: @desktop_computer.ethernet, frontusb: @desktop_computer.frontusb, gpuvgatype: @desktop_computer.gpuvgatype, graphics: @desktop_computer.graphics, hdd: @desktop_computer.hdd, hddinterface: @desktop_computer.hddinterface, hddrpm: @desktop_computer.hddrpm, keyboard: @desktop_computer.keyboard, keyboardtype: @desktop_computer.keyboardtype, l2cachepercpu: @desktop_computer.l2cachepercpu, l3cachepercpu: @desktop_computer.l3cachepercpu, lanchipset: @desktop_computer.lanchipset, lanspeed: @desktop_computer.lanspeed, maxmemorysupported: @desktop_computer.maxmemorysupported, memory: @desktop_computer.memory, memorycapacity: @desktop_computer.memorycapacity, memoryslot: @desktop_computer.memoryslot, memoryspec: @desktop_computer.memoryspec, memoryspeed: @desktop_computer.memoryspeed, mouse: @desktop_computer.mouse, mousetype: @desktop_computer.mousetype, name: @desktop_computer.name, opticaldrive: @desktop_computer.opticaldrive, opticaldrivespec: @desktop_computer.opticaldrivespec, opticaldrivetype: @desktop_computer.opticaldrivetype, os: @desktop_computer.os, other: @desktop_computer.other, pcislots: @desktop_computer.pcislots, powersupply: @desktop_computer.powersupply, price: @desktop_computer.price, processor: @desktop_computer.processor, processormainfeatures: @desktop_computer.processormainfeatures, ps2: @desktop_computer.ps2, rearaudioports: @desktop_computer.rearaudioports, rearusb: @desktop_computer.rearusb, rj45: @desktop_computer.rj45, specialfeatures: @desktop_computer.specialfeatures, storage: @desktop_computer.storage, usage: @desktop_computer.usage, videoports: @desktop_computer.videoports, warranty: @desktop_computer.warranty, weight: @desktop_computer.weight }
    assert_redirected_to desktop_computer_path(assigns(:desktop_computer))
  end

  test "should destroy desktop_computer" do
    assert_difference('DesktopComputer.count', -1) do
      delete :destroy, id: @desktop_computer
    end

    assert_redirected_to desktop_computers_path
  end
end
