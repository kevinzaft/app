class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :series
      t.string :brandmodel
      t.string :partnumber
      t.string :cputype
      t.string :cpuspeed
      t.string :corename
      t.string :turbofrequency
      t.string :numberofcores
      t.string :cpul3cache
      t.string :screensize
      t.string :touchscreen
      t.string :widescreensupport
      t.string :resolution
      t.string :lcdfeatures
      t.string :os
      t.string :gpuvpu
      t.string :videomemory
      t.string :graphictype
      t.string :hdd
      t.string :hddrpm
      t.string :memory
      t.string :memoryspeed
      t.string :memoryspec
      t.string :memoryslottotal
      t.string :memoryslotavailable
      t.string :maxmemorysupported
      t.string :opticaldrivetype
      t.string :wlan
      t.string :bluetooth
      t.string :usbports
      t.string :videoports
      t.string :hdmi
      t.string :audioports
      t.string :webcam
      t.string :cardreader
      t.string :battery
      t.string :batterylife
      t.string :color
      t.string :dimensions
      t.string :weight
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
