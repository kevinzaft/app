class CreateWirelessRouters < ActiveRecord::Migration
  def change
    create_table :wireless_routers do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :standards
      t.string :devicemanagement
      t.text :secrurity
      t.string :wpawpa2
      t.string :wanports
      t.string :lanports
      t.string :led
      t.string :buttons
      t.string :wirelessdatarates
      t.string :frequencyband
      t.string :antenna
      t.string :channels
      t.string :transmittedpower
      t.string :interface
      t.string :poweradapter
      t.string :wirelessadapterincuded
      t.text :systemrequirements
      t.string :dimensions
      t.string :weight
      t.text :temperature
      t.string :humidity
      t.text :features
      t.text :package
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
