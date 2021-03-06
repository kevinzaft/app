json.array!(@wireless_routers) do |wireless_router|
  json.extract! wireless_router, :id, :name, :price, :code, :brand, :brandmodel, :standards, :devicemanagement, :secrurity, :wpawpa2, :wanports, :lanports, :led, :buttons, :wirelessdatarates, :frequencyband, :antenna, :channels, :transmittedpower, :interface, :poweradapter, :wirelessadapterincuded, :systemrequirements, :dimensions, :weight, :temperature, :humidity, :features, :package, :warranty, :other
  json.url wireless_router_url(wireless_router, format: :json)
end
