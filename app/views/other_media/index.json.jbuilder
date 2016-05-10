json.array!(@other_media) do |other_medium|
  json.extract! other_medium, :id, :name, :price, :code, :brand, :brandmodel, :mediatype, :capacity, :maxspeedsupported, :quantity, :features, :packaging, :other
  json.url other_medium_url(other_medium, format: :json)
end
