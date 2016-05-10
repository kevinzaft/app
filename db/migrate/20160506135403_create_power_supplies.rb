class CreatePowerSupplies < ActiveRecord::Migration
  def change
    create_table :power_supplies do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :model
      t.string :series
      t.string :powertype
      t.string :maxpower
      t.string :fans
      t.string :pfc
      t.string :mainconnector
      t.string :twelvevrails
      t.string :pci
      t.string :sata
      t.string :efficiency
      t.string :voltageprotection
      t.string :inputvoltage
      t.string :inputfrequency
      t.string :inputcurrent
      t.string :output
      t.string :dimensions
      t.text :features

      t.timestamps null: false
    end
  end
end
