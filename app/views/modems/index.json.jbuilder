json.array!(@modems) do |modem|
  json.extract! modem, :id, :name, :price, :code, :brand, :brandmodel, :modemtype, :interface, :standards, :features, :package, :other, :warranty
  json.url modem_url(modem, format: :json)
end
