class CreatePowerPreotections < ActiveRecord::Migration
  def change
    create_table :power_protections do |t|
      t.string :name
      t.string :pptype
      t.string :price
      t.string :code
      t.text :general
      t.text :technical
      t.text :battery
      t.text :power
      t.text :physical
      t.text :other
      t.string :warranty

      t.timestamps null: false
    end
  end
end
