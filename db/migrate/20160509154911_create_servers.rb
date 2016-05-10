class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :series
      t.string :brandmodel
      t.string :servertype
      t.string :cputype
      t.string :cpusocket
      t.string :numberofcpucores
      t.string :cachememory
      t.string :installedmemorysize
      t.string :memorytype
      t.string :maxmemorycapacity
      t.text :memoryfeatures
      t.string :numberofmemoryslots
      t.string :harddrive
      t.string :raidlevel
      t.string :mediadrives
      t.string :expansionslot
      t.string :expansionbays
      t.string :os
      t.string :powercharacteristics
      t.string :weight
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
