json.array!(@security_cameras) do |security_camera|
  json.extract! security_camera, :id, :name, :price, :code, :brand, :brandmodel, :color, :securitycameratype, :cameratype, :wirelessdatarate, :sensor, :maxres, :videocaptureres, :lenstype, :shuttercontrol, :nightvision, :features, :package, :warranty, :other
  json.url security_camera_url(security_camera, format: :json)
end
