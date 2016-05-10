json.array!(@phone_accessories) do |phone_accessory|
  json.extract! phone_accessory, :id, :name, :price, :code, :brand, :accessorymodel, :accessorytype, :compatiblilty, :features, :dimensions, :other
  json.url phone_accessory_url(phone_accessory, format: :json)
end
