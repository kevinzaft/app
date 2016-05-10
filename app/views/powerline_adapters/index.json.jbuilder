json.array!(@powerline_adapters) do |powerline_adapter|
  json.extract! powerline_adapter, :id, :name, :price, :code, :brand, :brandmodel, :standards, :encryption, :ports, :led, :certifications, :powerlinespeeds, :connectiontype, :connectionspeeds, :kittype, :systemrequirements, :temperature, :humidity, :features, :dimensions, :weight, :other, :warranty
  json.url powerline_adapter_url(powerline_adapter, format: :json)
end
