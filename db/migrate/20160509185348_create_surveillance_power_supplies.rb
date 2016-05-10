class CreateSurveillancePowerSupplies < ActiveRecord::Migration
  def change
    create_table :surveillance_power_supplies do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :supplytype
      t.string :brand
      t.string :brandmodel
      t.string :input
      t.string :output
      t.string :cordlength
      t.text :dimensions
      t.text :other

      t.timestamps null: false
    end
  end
end
