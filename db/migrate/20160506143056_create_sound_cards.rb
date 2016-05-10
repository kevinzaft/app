class CreateSoundCards < ActiveRecord::Migration
  def change
    create_table :sound_cards do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :model
      t.string :chipset
      t.string :channels
      t.string :samplerate
      t.string :digitalaudio
      t.string :snr
      t.string :linein
      t.string :lineout
      t.string :spdif
      t.string :mic
      t.string :auxport
      t.string :otherport
      t.string :interface
      t.string :os
      t.text :systemrequirements
      t.text :features
      t.string :dimension
      t.string :weight
      t.text :packagecontents
      t.text :plug
      t.text :other

      t.timestamps null: false
    end
  end
end
