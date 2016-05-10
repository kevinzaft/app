class CreateHeadsets < ActiveRecord::Migration
  def change
    create_table :headsets do |t|
      t.string :name
      t.string :code
      t.string :price
      t.string :headsettype
      t.string   :brand
      t.string   :headsetmodel
      t.string   :connection
      t.string   :design
      t.string   :frequency
      t.string   :impedance
      t.string   :sensitivity
      t.string   :connectors
      t.string   :warranty
      t.string   :platform
      t.text     :other
      t.timestamps null: false
    end
  end
end
