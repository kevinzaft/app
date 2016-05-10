class CreateSecurityCameras < ActiveRecord::Migration
  def change
    create_table :security_cameras do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :color
      t.string :securitycameratype
      t.string :cameratype
      t.string :wirelessdatarate
      t.string :sensor
      t.string :maxres
      t.string :videocaptureres
      t.string :lenstype
      t.string :shuttercontrol
      t.string :nightvision
      t.text :features
      t.text :package
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
