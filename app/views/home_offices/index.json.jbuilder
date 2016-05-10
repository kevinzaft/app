json.array!(@home_offices) do |home_office|
  json.extract! home_office, :id, :name, :price, :code, :brand, :brandmodel, :officetype, :name, :version, :os, :systemrequirements, :features, :warranty, :other
  json.url home_office_url(home_office, format: :json)
end
