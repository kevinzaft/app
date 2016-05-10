class CreateTablets < ActiveRecord::Migration
  def change
    create_table :tablets do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :os
      t.string :cputype
      t.string :cpuspeed
      t.string :screensize
      t.string :touchscreen
      t.string :displaytype
      t.string :lcdfeatures
      t.string :resolution
      t.string :frontcamera
      t.string :rearcamera
      t.string :gpuvpu
      t.string :videomemory
      t.string :builtinstorage
      t.string :cardreader
      t.string :memory
      t.string :wlan
      t.string :bluetooth
      t.string :usb
      t.string :hdmi
      t.string :audioports
      t.string :audio
      t.string :battery
      t.string :service
      t.string :funcion
      t.string :dimensions
      t.string :weight
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
