class CreateAppliances < ActiveRecord::Migration
  def change
    create_table :appliances do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :appliancetype
      t.string :brand
      t.string :appliancemodel
      t.text :features
      t.text :power
      t.text :specifications
      t.string :dimensions
      t.string :weight
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
