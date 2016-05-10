class CreateNetworkCameras < ActiveRecord::Migration
  def change
    create_table :network_cameras do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :cameratype
      t.string :connectiontype
      t.string :wirelessstandard
      t.string :wirelessdatarate
      t.string :ports
      t.text :networkingprotocol
      t.string :zoom
      t.string :sensor
      t.string :maxres
      t.string :videocaptureres
      t.string :framerate
      t.string :lenstype
      t.string :security
      t.string :os
      t.text :features
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
