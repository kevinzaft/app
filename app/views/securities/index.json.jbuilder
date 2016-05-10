json.array!(@securities) do |security|
  json.extract! security, :id, :name, :price, :code, :brand, :brandmodel, :securitytype, :systemrequirements, :features, :warranty, :other
  json.url security_url(security, format: :json)
end
