json.array!(@home_theater_systems) do |home_theater_system|
  json.extract! home_theater_system, :id, :name, :price, :code, :brand, :homemodel, :channels, :speakerpowerrating, :speakerfrequency, :features, :dimensions, :other, :warranty
  json.url home_theater_system_url(home_theater_system, format: :json)
end
