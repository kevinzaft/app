json.array!(@wireless_adapters) do |wireless_adapter|
  json.extract! wireless_adapter, :id, :name, :price, :code, :brand, :brandmodel, :standards, :wirelessdatarates, :security, :interface, :frequencyband, :channel, :modulation, :transmittedpower, :antenna, :color, :systemrequirements, :features, :dimensions, :weight, :temperature, :humidity, :package, :warranty, :other
  json.url wireless_adapter_url(wireless_adapter, format: :json)
end
