json.array!(@surveillance_cables) do |surveillance_cable|
  json.extract! surveillance_cable, :id, :name, :price, :code, :brand, :brandmodel, :cat, :length, :color, :shielded, :features, :other
  json.url surveillance_cable_url(surveillance_cable, format: :json)
end
