json.array!(@servers) do |server|
  json.extract! server, :id, :name, :price, :code, :brand, :series, :brandmodel, :servertype, :cputype, :cpusocket, :numberofcpucores, :cachememory, :installedmemorysize, :memorytype, :maxmemorycapacity, :memoryfeatures, :numberofmemoryslots, :harddrive, :raidlevel, :mediadrives, :expansionslot, :expansionbays, :os, :powercharacteristics, :weight, :warranty, :other
  json.url server_url(server, format: :json)
end
