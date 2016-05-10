json.array!(@speakers) do |speaker|
  json.extract! speaker, :id, :name, :price, :code, :brand, :brandmodel, :speakertype, :speakerconfig, :power, :frequency, :systemrequirements, :dimensions, :weight, :features, :packagecontents, :plug, :warranty, :other
  json.url speaker_url(speaker, format: :json)
end
