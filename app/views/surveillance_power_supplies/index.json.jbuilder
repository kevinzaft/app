json.array!(@surveillance_power_supplies) do |surveillance_power_supply|
  json.extract! surveillance_power_supply, :id, :name, :price, :code, :supplytype, :brand, :brandmodel, :input, :output, :cordlength, :dimensions, :other
  json.url surveillance_power_supply_url(surveillance_power_supply, format: :json)
end
