json.array!(@printers) do |printer|
  json.extract! printer, :id, :name, :price, :code, :brand, :model, :printertype, :printtechnology, :outputtype, :resolution, :blackspeed, :colorspeed, :connectivity, :duplex, :maxdutycycle, :inputcapacity, :mediasize, :processor, :memory, :function, :copy, :fax, :capability, :scanner, :scanresolution, :autodocumentfeeder, :powerconsumption, :dimensions, :weight, :cartridges, :warranty, :other
  json.url printer_url(printer, format: :json)
end
