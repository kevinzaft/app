json.array!(@networking_accessories) do |networking_accessory|
  json.extract! networking_accessory, :id, :name, :price, :code, :brand, :brandmodel, :accessorytype, :features, :color, :dimensions, :details, :other
  json.url networking_accessory_url(networking_accessory, format: :json)
end
