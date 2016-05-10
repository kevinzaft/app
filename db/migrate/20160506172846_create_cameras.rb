class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :name
      t.string :price
      t.string :code
      t.text :cameramodel
      t.text :details
      t.text :imagesensor
      t.text :whitebalance
      t.text :viewfinder
      t.text :lcdmonitor
      t.text :focus
      t.text :exposure
      t.text :shutter
      t.text :flash
      t.text :drive
      t.text :function
      t.text :recording
      t.text :movie
      t.text :lens
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
