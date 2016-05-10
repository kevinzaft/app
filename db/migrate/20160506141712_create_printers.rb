class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :model
      t.string :printertype
      t.string :printtechnology
      t.string :outputtype
      t.string :resolution
      t.string :blackspeed
      t.string :colorspeed
      t.string :connectivity
      t.string :duplex
      t.string :maxdutycycle
      t.string :inputcapacity
      t.string :mediasize
      t.string :processor
      t.string :memory
      t.string :function
      t.string :copy
      t.string :fax
      t.string :capability
      t.string :scanner
      t.string :scanresolution
      t.string :autodocumentfeeder
      t.text :powerconsumption
      t.string :dimensions
      t.string :weight
      t.string :cartridges
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
