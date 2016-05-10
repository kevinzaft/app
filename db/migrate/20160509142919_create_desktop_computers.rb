class CreateDesktopComputers < ActiveRecord::Migration
  def change
    create_table :desktop_computers do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :desktoptype
      t.string :usage
      t.string :colors
      t.string :processor
      t.string :processormainfeatures
      t.string :cacheperprocessor
      t.string :memory
      t.string :storage
      t.string :opticaldrive
      t.string :graphics
      t.string :audio
      t.string :ethernet
      t.string :powersupply
      t.string :keyboard
      t.string :mouse
      t.string :os
      t.text :specialfeatures
      t.string :cputype
      t.string :cpuspeed
      t.string :l2cachepercpu
      t.string :l3cachepercpu
      t.string :cpusockettype
      t.text :cpumainfeatures
      t.string :gpuvgatype
      t.string :memorycapacity
      t.string :memoryspeed
      t.string :memoryspec
      t.string :memoryslot
      t.string :maxmemorysupported
      t.string :hdd
      t.string :hddinterface
      t.string :hddrpm
      t.string :opticaldrivetype
      t.string :opticaldrivespec
      t.string :audiochipset
      t.string :audiochannels
      t.string :lanchipset
      t.string :lanspeed
      t.string :frontusb
      t.string :ps2
      t.string :videoports
      t.string :rearusb
      t.string :rj45
      t.string :rearaudioports
      t.text :pcislots
      t.string :mousetype
      t.string :keyboardtype
      t.string :dimensions
      t.string :weight
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
