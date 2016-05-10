class CreateMotherboards < ActiveRecord::Migration
  def change
    create_table :motherboards do |t|
      t.string :name
      t.string :code
      t.string :price
      t.string :motherboardtype
      t.string :formfactor
      t.text :cpu
      t.string :chipset
      t.text :memory
      t.text :graphic
      t.string :multigpu
      t.text :expansion
      t.text :storage
      t.text :lan
      t.text :audio
      t.text :usb
      t.text :workstation
      t.text :special
      t.text :backio
      t.text :internalio
      t.text :accessories
      t.text :bios
      t.string :manageability
      t.string :supportdisc
      t.text :os
      t.text :other
      t.timestamps null: false
    end
  end
end
