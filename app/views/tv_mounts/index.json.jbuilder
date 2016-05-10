json.array!(@tv_mounts) do |tv_mount|
  json.extract! tv_mount, :id, :name, :price, :code, :brand, :brandmodel, :tvsizecapacity, :tvweightcapacity, :vesacompatible, :features, :dimensions, :weight, :other, :warranty
  json.url tv_mount_url(tv_mount, format: :json)
end
