class CreateFlashDigitals < ActiveRecord::Migration
  def change
    create_table :flash_digitals do |t|
      t.string :name
      t.string :code
      t.string :storagetype
      t.string :price
      t.string :brand
      t.string :capacity
      t.string :color
      t.string :dimensions
      t.string :weight
      t.string :interface
      t.string :readspeed
      t.string :writespeed
      t.text :systemrequirements
      t.text :warranty
      t.text :note

      t.timestamps null: false
    end
  end
end
