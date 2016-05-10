json.array!(@routers) do |router|
  json.extract! router, :id, :name, :price, :code, :brand, :brandmodel, :standards, :devicemanagement, :security, :wpawpa2, :wanports, :lanports, :led, :buttons, :wirelessdatarates, :frequencyband, :antenna, :channels, :transmittedpower, :interface, :poweradapter, :wirelessadapterincluded, :systemrequirements, :dimensions, :weight, :temperature, :humidity, :features, :package, :warranty, :other
  json.url router_url(router, format: :json)
end
