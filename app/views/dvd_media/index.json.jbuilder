json.array!(@dvd_media) do |dvd_medium|
  json.extract! dvd_medium, :id, :name, :price, :code, :brand, :brandmodel, :mediatype, :capacity, :maxspeedsupported, :quantity, :features, :packaging, :other
  json.url dvd_medium_url(dvd_medium, format: :json)
end
