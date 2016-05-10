class CreatePowerlineAdapters < ActiveRecord::Migration
  def change
    create_table :powerline_adapters do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :standards
      t.string :encryption
      t.string :ports
      t.string :led
      t.string :certifications
      t.string :powerlinespeeds
      t.string :connectiontype
      t.string :connectionspeeds
      t.string :kittype
      t.string :systemrequirements
      t.string :temperature
      t.string :humidity
      t.text :features
      t.string :dimensions
      t.string :weight
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
