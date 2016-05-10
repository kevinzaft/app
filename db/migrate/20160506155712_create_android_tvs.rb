class CreateAndroidTvs < ActiveRecord::Migration
  def change
    create_table :android_tvs do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :series
      t.string :tvmodel
      t.string :os
      t.string :cputype
      t.string :cpuspeed
      t.string :cores
      t.string :tech
      t.string :screensize
      t.string :touchscreen
      t.text :lcdfeatures
      t.string :resolution
      t.string :webcam
      t.string :gpuvpu
      t.string :videomemory
      t.string :builtinstorage
      t.string :cardreader
      t.text :memory
      t.string :opticaldrive
      t.string :wlan
      t.string :bluetooth
      t.string :usbport
      t.string :hdmi
      t.string :audioports
      t.string :audio
      t.string :battery
      t.string :service
      t.text :otherfeatures
      t.text :warranty

      t.timestamps null: false
    end
  end
end
