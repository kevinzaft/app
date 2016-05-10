json.array!(@network_switches) do |network_switch|
  json.extract! network_switch, :id, :name, :price, :code, :brand, :series, :brandmodel, :format, :standards, :primaryports, :primaryportspeed, :layer, :power, :features, :dimensions, :weight, :package, :other, :warranty
  json.url network_switch_url(network_switch, format: :json)
end
