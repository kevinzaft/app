class CreateKeyboardMouses < ActiveRecord::Migration
  def change
    create_table :keyboard_mouses do |t|
      t.string :name
      t.string :code
      t.string :price
      t.string :brand
      t.string :productmodel
      t.string :producttype
      t.string :connection
      t.string :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
