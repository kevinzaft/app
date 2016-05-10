json.array!(@pc_accessories) do |pc_accessory|
  json.extract! pc_accessory, :id, :name, :price, :code, :brand, :brandmodel, :casetype, :color, :fitmostscreensize, :capacity, :features, :dimensions, :weight, :warranty, :other
  json.url pc_accessory_url(pc_accessory, format: :json)
end
