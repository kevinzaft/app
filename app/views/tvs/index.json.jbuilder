json.array!(@tvs) do |tv|
  json.extract! tv, :id, :name, :price, :code, :brand, :tvmodel, :screensize, :maxres, :aspectratio, :displaycolor, :brightness, :contrastratio, :response, :refreshrate, :video, :tuner, :audio, :hdmi, :usb, :digiatlaudio, :componentvideo, :otherconnectors, :power, :mount, :features, :dimension, :weight, :other, :warranty
  json.url tv_url(tv, format: :json)
end
