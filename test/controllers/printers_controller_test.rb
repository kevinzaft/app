require 'test_helper'

class PrintersControllerTest < ActionController::TestCase
  setup do
    @printer = printers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:printers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create printer" do
    assert_difference('Printer.count') do
      post :create, printer: { autodocumentfeeder: @printer.autodocumentfeeder, blackspeed: @printer.blackspeed, brand: @printer.brand, capability: @printer.capability, cartridges: @printer.cartridges, code: @printer.code, colorspeed: @printer.colorspeed, connectivity: @printer.connectivity, copy: @printer.copy, dimensions: @printer.dimensions, duplex: @printer.duplex, fax: @printer.fax, function: @printer.function, inputcapacity: @printer.inputcapacity, maxdutycycle: @printer.maxdutycycle, mediasize: @printer.mediasize, memory: @printer.memory, model: @printer.model, name: @printer.name, other: @printer.other, outputtype: @printer.outputtype, powerconsumption: @printer.powerconsumption, price: @printer.price, printertype: @printer.printertype, printtechnology: @printer.printtechnology, processor: @printer.processor, resolution: @printer.resolution, scanner: @printer.scanner, scanresolution: @printer.scanresolution, warranty: @printer.warranty, weight: @printer.weight }
    end

    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should show printer" do
    get :show, id: @printer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @printer
    assert_response :success
  end

  test "should update printer" do
    patch :update, id: @printer, printer: { autodocumentfeeder: @printer.autodocumentfeeder, blackspeed: @printer.blackspeed, brand: @printer.brand, capability: @printer.capability, cartridges: @printer.cartridges, code: @printer.code, colorspeed: @printer.colorspeed, connectivity: @printer.connectivity, copy: @printer.copy, dimensions: @printer.dimensions, duplex: @printer.duplex, fax: @printer.fax, function: @printer.function, inputcapacity: @printer.inputcapacity, maxdutycycle: @printer.maxdutycycle, mediasize: @printer.mediasize, memory: @printer.memory, model: @printer.model, name: @printer.name, other: @printer.other, outputtype: @printer.outputtype, powerconsumption: @printer.powerconsumption, price: @printer.price, printertype: @printer.printertype, printtechnology: @printer.printtechnology, processor: @printer.processor, resolution: @printer.resolution, scanner: @printer.scanner, scanresolution: @printer.scanresolution, warranty: @printer.warranty, weight: @printer.weight }
    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should destroy printer" do
    assert_difference('Printer.count', -1) do
      delete :destroy, id: @printer
    end

    assert_redirected_to printers_path
  end
end
