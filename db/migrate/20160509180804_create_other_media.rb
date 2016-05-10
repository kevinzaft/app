class CreateOtherMedia < ActiveRecord::Migration
  def change
    create_table :other_media do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :mediatype
      t.string :capacity
      t.string :maxspeedsupported
      t.string :quantity
      t.text :features
      t.string :packaging
      t.text :other

      t.timestamps null: false
    end
  end
end
