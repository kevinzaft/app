class CreateAmplifiers < ActiveRecord::Migration
  def change
    create_table :amplifiers do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.text :specification
      t.text :features
      t.string :dimensions
      t.string :weight
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
