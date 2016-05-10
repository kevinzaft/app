class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.string :code
      t.string :price
      t.string :brand
      t.string :model
      t.string :tooltype
      t.text :details
      t.text :features
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
