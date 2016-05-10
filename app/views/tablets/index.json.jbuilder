json.array!(@tablets) do |tablet|
  json.extract! tablet, :id, :name, :price, :code, :brand, :brandmodel, :os, :cputype, :cpuspeed, :screensize, :touchscreen, :displaytype, :lcdfeatures, :resolution, :frontcamera, :rearcamera, :gpuvpu, :videomemory, :builtinstorage, :cardreader, :memory, :wlan, :bluetooth, :usb, :hdmi, :audioports, :audio, :battery, :service, :funcion, :dimensions, :weight, :warranty, :other
  json.url tablet_url(tablet, format: :json)
end
