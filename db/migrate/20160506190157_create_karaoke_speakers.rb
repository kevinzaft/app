class CreateKaraokeSpeakers < ActiveRecord::Migration
  def change
    create_table :karaoke_speakers do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :kstype
      t.string :soldas
      t.text :driverunits
      t.string :frequencyresponse
      t.string :nominalimpedance
      t.string :sensitivity
      t.text :features
      t.text :dimensions
      t.string :weight
      t.text :other
      t.string :warranty

      t.timestamps null: false
    end
  end
end
