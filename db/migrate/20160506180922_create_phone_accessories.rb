class CreatePhoneAccessories < ActiveRecord::Migration
  def change
    create_table :phone_accessories do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :accessorymodel
      t.string :accessorytype
      t.text :compatiblilty
      t.text :features
      t.text :dimensions
      t.text :other

      t.timestamps null: false
    end
  end
end
