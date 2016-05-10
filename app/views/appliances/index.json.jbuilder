json.array!(@appliances) do |appliance|
  json.extract! appliance, :id, :name, :price, :code, :appliancetype, :brand, :appliancemodel, :features, :power, :specifications, :dimensions, :weight, :warranty, :other
  json.url appliance_url(appliance, format: :json)
end
