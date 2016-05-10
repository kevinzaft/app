json.array!(@amplifiers) do |amplifier|
  json.extract! amplifier, :id, :name, :price, :code, :brand, :brandmodel, :specification, :features, :dimensions, :weight, :other, :warranty
  json.url amplifier_url(amplifier, format: :json)
end
