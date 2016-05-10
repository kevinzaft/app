json.array!(@cd_media) do |cd_medium|
  json.extract! cd_medium, :id, :name, :price, :code, :brand, :brandmodel, :mediatype, :capacity, :recordtime, :maxspeedsupported, :quantity, :features, :packaging, :other
  json.url cd_medium_url(cd_medium, format: :json)
end
