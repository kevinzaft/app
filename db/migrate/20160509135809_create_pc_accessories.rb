class CreatePcAccessories < ActiveRecord::Migration
  def change
    create_table :pc_accessories do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :casetype
      t.string :color
      t.string :fitmostscreensize
      t.string :capacity
      t.text :features
      t.string :dimensions
      t.string :weight
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
