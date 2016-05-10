json.array!(@network_dvrs) do |network_dvr|
  json.extract! network_dvr, :id, :name, :price, :code, :brand, :brandmodel, :supportedprotocols, :networkinterface, :videoinput, :videooutput, :framerate, :compressionformat, :storagecapacity, :powersupply, :temerature, :humidity, :dimensions, :weight, :warranty, :other
  json.url network_dvr_url(network_dvr, format: :json)
end
