class CreateNetworkAdapters < ActiveRecord::Migration
  def change
    create_table :network_adapters do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :standards
      t.string :wirelessdatarates
      t.string :security
      t.string :interface
      t.string :frequencyband
      t.string :channels
      t.string :modulation
      t.text :transmittedpower
      t.string :antenna
      t.string :color
      t.text :systemrequirements
      t.text :features
      t.string :dimenstions
      t.string :weight
      t.string :temperature
      t.string :humidity
      t.text :package
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
