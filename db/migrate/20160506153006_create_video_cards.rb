class CreateVideoCards < ActiveRecord::Migration
  def change
    create_table :video_cards do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :videocardtype
      t.string :brand
      t.string :cardmodel
      t.string :interface
      t.string :chipsetmanufacturer
      t.string :gpu
      t.text :coreclock
      t.text :boostclock
      t.text :cudacores
      t.string :memoryclock
      t.string :memorysize
      t.string :memoryinterface
      t.string :memorytype
      t.string :directx
      t.string :opengl
      t.string :hdmiport
      t.string :multimonitorsupport
      t.string :displayport
      t.text :dvi
      t.string :ramdac
      t.string :maxres
      t.string :threedvisionready
      t.string :slisupport
      t.string :virtualrealityready
      t.string :cooler
      t.text :systemrequirements
      t.string :powerconnector
      t.string :duallinkdvi
      t.string :hdcpready
      t.text :features
      t.string :dimensions
      t.string :slotwidth
      t.text :package
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
