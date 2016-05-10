class CreateTvMounts < ActiveRecord::Migration
  def change
    create_table :tv_mounts do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :tvsizecapacity
      t.string :tvweightcapacity
      t.string :vesacompatible
      t.text :features
      t.string :dimensions
      t.string :weight
      t.text :other
      t.text :warranty

      t.timestamps null: false
    end
  end
end
