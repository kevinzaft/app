json.array!(@network_adapters) do |network_adapter|
  json.extract! network_adapter, :id, :name, :price, :code, :brand, :brandmodel, :standards, :wirelessdatarates, :security, :interface, :frequencyband, :channels, :modulation, :transmittedpower, :antenna, :color, :systemrequirements, :features, :dimenstions, :weight, :temperature, :humidity, :package, :other, :warranty
  json.url network_adapter_url(network_adapter, format: :json)
end
