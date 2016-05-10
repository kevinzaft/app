class CreateNetworkSwitches < ActiveRecord::Migration
  def change
    create_table :network_switches do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :series
      t.string :brandmodel
      t.string :format
      t.text :standards
      t.string :primaryports
      t.string :primaryportspeed
      t.string :layer
      t.string :power
      t.text :features
      t.string :dimensions
      t.string :weight
      t.text :package
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
