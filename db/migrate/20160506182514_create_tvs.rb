class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :tvmodel
      t.string :screensize
      t.string :maxres
      t.string :aspectratio
      t.string :displaycolor
      t.string :brightness
      t.string :contrastratio
      t.string :response
      t.string :refreshrate
      t.text :video
      t.string :tuner
      t.text :audio
      t.string :hdmi
      t.string :usb
      t.string :digiatlaudio
      t.string :componentvideo
      t.text :otherconnectors
      t.text :power
      t.text :mount
      t.text :features
      t.text :dimension
      t.string :weight
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
