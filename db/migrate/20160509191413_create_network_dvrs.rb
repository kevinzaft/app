class CreateNetworkDvrs < ActiveRecord::Migration
  def change
    create_table :network_dvrs do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.text :supportedprotocols
      t.string :networkinterface
      t.string :videoinput
      t.string :videooutput
      t.string :framerate
      t.string :compressionformat
      t.string :storagecapacity
      t.text :powersupply
      t.string :temerature
      t.string :humidity
      t.string :dimensions
      t.string :weight
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
