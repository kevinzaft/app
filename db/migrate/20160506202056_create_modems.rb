class CreateModems < ActiveRecord::Migration
  def change
    create_table :modems do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :modemtype
      t.text :interface
      t.string :standards
      t.text :features
      t.text :package
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
