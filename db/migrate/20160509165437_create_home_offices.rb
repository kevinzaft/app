class CreateHomeOffices < ActiveRecord::Migration
  def change
    create_table :home_offices do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :officetype
      t.string :name
      t.string :version
      t.string :os
      t.text :systemrequirements
      t.text :features
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
