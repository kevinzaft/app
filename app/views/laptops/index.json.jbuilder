json.array!(@laptops) do |laptop|
  json.extract! laptop, :id, :name, :price, :code, :brand, :series, :brandmodel, :partnumber, :cputype, :cpuspeed, :corename, :turbofrequency, :numberofcores, :cpul3cache, :screensize, :touchscreen, :widescreensupport, :resolution, :lcdfeatures, :os, :gpuvpu, :videomemory, :graphictype, :hdd, :hddrpm, :memory, :memoryspeed, :memoryspec, :memoryslottotal, :memoryslotavailable, :maxmemorysupported, :opticaldrivetype, :wlan, :bluetooth, :usbports, :videoports, :hdmi, :audioports, :webcam, :cardreader, :battery, :batterylife, :color, :dimensions, :weight, :warranty, :other
  json.url laptop_url(laptop, format: :json)
end
