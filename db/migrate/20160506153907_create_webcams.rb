class CreateWebcams < ActiveRecord::Migration
  def change
    create_table :webcams do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :webcammodel
      t.string :partnumber
      t.string :color
      t.string :interface
      t.string :maximageres
      t.string :videocaptureres
      t.string :os
      t.text :features
      t.text :package
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
