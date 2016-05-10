json.array!(@car_accessories) do |car_accessory|
  json.extract! car_accessory, :id, :name, :price, :code, :brand, :camodel, :catype, :features, :spec, :dimensions, :other
  json.url car_accessory_url(car_accessory, format: :json)
end
