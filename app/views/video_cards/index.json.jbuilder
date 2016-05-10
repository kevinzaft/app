json.array!(@video_cards) do |video_card|
  json.extract! video_card, :id, :name, :price, :code, :videocardtype, :brand, :cardmodel, :interface, :chipsetmanufacturer, :gpu, :coreclock, :boostclock, :cudacores, :memoryclock, :memorysize, :memoryinterface, :memorytype, :directx, :opengl, :hdmiport, :multimonitorsupport, :displayport, :dvi, :ramdac, :maxres, :threedvisionready, :slisupport, :virtualrealityready, :cooler, :systemrequirements, :powerconnector, :duallinkdvi, :hdcpready, :features, :dimensions, :slotwidth, :package, :warranty, :other
  json.url video_card_url(video_card, format: :json)
end
