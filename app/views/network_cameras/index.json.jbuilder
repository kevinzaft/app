json.array!(@network_cameras) do |network_camera|
  json.extract! network_camera, :id, :name, :price, :code, :brand, :brandmodel, :cameratype, :connectiontype, :wirelessstandard, :wirelessdatarate, :ports, :networkingprotocol, :zoom, :sensor, :maxres, :videocaptureres, :framerate, :lenstype, :security, :os, :features, :warranty, :other
  json.url network_camera_url(network_camera, format: :json)
end
