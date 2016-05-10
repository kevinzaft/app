class CreateCarAccessories < ActiveRecord::Migration
  def change
    create_table :car_accessories do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :camodel
      t.string :catype
      t.text :features
      t.text :spec
      t.text :dimensions
      t.text :other

      t.timestamps null: false
    end
  end
end
