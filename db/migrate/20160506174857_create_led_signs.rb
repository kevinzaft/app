class CreateLedSigns < ActiveRecord::Migration
  def change
    create_table :led_signs do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :signmodel
      t.string :colors
      t.string :volts
      t.string :datatransfer
      t.text :features
      t.text :dimensions
      t.string :weight
      t.text :other

      t.timestamps null: false
    end
  end
end
