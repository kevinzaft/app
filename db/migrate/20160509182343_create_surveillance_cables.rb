class CreateSurveillanceCables < ActiveRecord::Migration
  def change
    create_table :surveillance_cables do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :cat
      t.string :length
      t.string :color
      t.string :shielded
      t.text :features
      t.text :other

      t.timestamps null: false
    end
  end
end
