class CreateBlurayStorages < ActiveRecord::Migration
  def change
    create_table :bluray_storages do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :storagetype
      t.string :capacity
      t.string :maxspeedsupported
      t.string :quantity
      t.string :surfacetop
      t.text :features
      t.string :packaging
      t.text :other

      t.timestamps null: false
    end
  end
end
