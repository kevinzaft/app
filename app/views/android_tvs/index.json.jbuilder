json.array!(@android_tvs) do |android_tv|
  json.extract! android_tv, :id, :name, :price, :code, :brand, :series, :tvmodel, :os, :cputype, :cpuspeed, :cores, :tech, :screensize, :touchscreen, :lcdfeatures, :resolution, :webcam, :gpuvpu, :videomemory, :builtinstorage, :cardreader, :memory, :opticaldrive, :wlan, :bluetooth, :usbport, :hdmi, :audioports, :audio, :battery, :service, :otherfeatures, :warranty
  json.url android_tv_url(android_tv, format: :json)
end
