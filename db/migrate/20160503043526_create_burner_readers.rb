class CreateBurnerReaders < ActiveRecord::Migration
  def change
    create_table :burner_readers do |t|
      t.string :name
      t.string :code
      t.string :price
      t.string :brand
      t.string :productmodel
      t.string :cdrom
      t.string :dvdrom
      t.string :drivetype
      t.string :dvdr
      t.string :dvdrdl
      t.string :dvdmr
      t.string :dvdmrdl
      t.string :dvdrw
      t.string :dvdmrw
      t.string :dvdmram
      t.string :cdmr
      t.string :cdmrw
      t.string :dvdzr
      t.string :dvdzrdl
      t.string :dvdzrw
      t.string :os
      t.string :buffer
      t.string :disc
      t.string :cdda
      t.string :mmcd
      t.text :other

      t.timestamps null: false
    end
  end
end
