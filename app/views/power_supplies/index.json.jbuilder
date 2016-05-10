json.array!(@power_supplies) do |power_supply|
  json.extract! power_supply, :id, :name, :price, :code, :brand, :model, :series, :powertype, :maxpower, :fans, :pfc, :mainconnector, :twelvevrails, :pci, :sata, :efficiency, :voltageprotection, :inputvoltage, :inputfrequency, :inputcurrent, :output, :dimensions, :features
  json.url power_supply_url(power_supply, format: :json)
end
