class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.string :name
      t.string :code
      t.string :price
      t.string :memorytype
      t.string :brand
      t.string :mpn
      t.string :manufacturer
      t.string :website
      t.text :marketinginfo
      t.string :productline
      t.string :producttype
      t.string :errorchecking
      t.string :memorysize
      t.string :memoryspeed
      t.string :memorystandard
      t.string :memorytech
      t.string :signalprocessing
      t.string :formfactor
      t.string :length
      t.string :pins
      t.string :width
      t.string :caslatency
      t.string :voltage
      t.string :modules

      t.timestamps null: false
    end
  end
end
