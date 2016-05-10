class CreateNetworkingAccessories < ActiveRecord::Migration
  def change
    create_table :networking_accessories do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :accessorytype
      t.text :features
      t.string :color
      t.text :dimensions
      t.text :details
      t.text :other

      t.timestamps null: false
    end
  end
end
