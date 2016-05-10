json.array!(@webcams) do |webcam|
  json.extract! webcam, :id, :name, :price, :code, :brand, :webcammodel, :partnumber, :color, :interface, :maximageres, :videocaptureres, :os, :features, :package, :other, :warranty
  json.url webcam_url(webcam, format: :json)
end
