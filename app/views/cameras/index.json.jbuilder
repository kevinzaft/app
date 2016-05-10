json.array!(@cameras) do |camera|
  json.extract! camera, :id, :name, :price, :code, :cameramodel, :details, :imagesensor, :whitebalance, :viewfinder, :lcdmonitor, :focus, :exposure, :shutter, :flash, :drive, :function, :recording, :movie, :lens, :other, :warranty
  json.url camera_url(camera, format: :json)
end
