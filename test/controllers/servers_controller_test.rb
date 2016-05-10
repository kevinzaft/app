require 'test_helper'

class ServersControllerTest < ActionController::TestCase
  setup do
    @server = servers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create server" do
    assert_difference('Server.count') do
      post :create, server: { brand: @server.brand, brandmodel: @server.brandmodel, cachememory: @server.cachememory, code: @server.code, cpusocket: @server.cpusocket, cputype: @server.cputype, expansionbays: @server.expansionbays, expansionslot: @server.expansionslot, harddrive: @server.harddrive, installedmemorysize: @server.installedmemorysize, maxmemorycapacity: @server.maxmemorycapacity, mediadrives: @server.mediadrives, memoryfeatures: @server.memoryfeatures, memorytype: @server.memorytype, name: @server.name, numberofcpucores: @server.numberofcpucores, numberofmemoryslots: @server.numberofmemoryslots, os: @server.os, other: @server.other, powercharacteristics: @server.powercharacteristics, price: @server.price, raidlevel: @server.raidlevel, series: @server.series, servertype: @server.servertype, warranty: @server.warranty, weight: @server.weight }
    end

    assert_redirected_to server_path(assigns(:server))
  end

  test "should show server" do
    get :show, id: @server
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @server
    assert_response :success
  end

  test "should update server" do
    patch :update, id: @server, server: { brand: @server.brand, brandmodel: @server.brandmodel, cachememory: @server.cachememory, code: @server.code, cpusocket: @server.cpusocket, cputype: @server.cputype, expansionbays: @server.expansionbays, expansionslot: @server.expansionslot, harddrive: @server.harddrive, installedmemorysize: @server.installedmemorysize, maxmemorycapacity: @server.maxmemorycapacity, mediadrives: @server.mediadrives, memoryfeatures: @server.memoryfeatures, memorytype: @server.memorytype, name: @server.name, numberofcpucores: @server.numberofcpucores, numberofmemoryslots: @server.numberofmemoryslots, os: @server.os, other: @server.other, powercharacteristics: @server.powercharacteristics, price: @server.price, raidlevel: @server.raidlevel, series: @server.series, servertype: @server.servertype, warranty: @server.warranty, weight: @server.weight }
    assert_redirected_to server_path(assigns(:server))
  end

  test "should destroy server" do
    assert_difference('Server.count', -1) do
      delete :destroy, id: @server
    end

    assert_redirected_to servers_path
  end
end
