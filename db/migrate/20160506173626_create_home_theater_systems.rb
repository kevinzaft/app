class CreateHomeTheaterSystems < ActiveRecord::Migration
  def change
    create_table :home_theater_systems do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :homemodel
      t.string :channels
      t.string :speakerpowerrating
      t.string :speakerfrequency
      t.text :features
      t.text :dimensions
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
