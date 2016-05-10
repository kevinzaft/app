class CreateWirelessAdapters < ActiveRecord::Migration
  def change
    create_table :wireless_adapters do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.text :standards
      t.string :wirelessdatarates
      t.text :security
      t.string :interface
      t.string :frequencyband
      t.text :channel
      t.text :modulation
      t.text :transmittedpower
      t.string :antenna
      t.string :color
      t.text :systemrequirements
      t.text :features
      t.string :dimensions
      t.string :weight
      t.string :temperature
      t.string :humidity
      t.text :package
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
