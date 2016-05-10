json.array!(@bluray_storages) do |bluray_storage|
  json.extract! bluray_storage, :id, :name, :price, :code, :brand, :brandmodel, :storagetype, :capacity, :maxspeedsupported, :quantity, :surfacetop, :features, :packaging, :other
  json.url bluray_storage_url(bluray_storage, format: :json)
end
