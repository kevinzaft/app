class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :speakertype
      t.string :speakerconfig
      t.string :power
      t.string :frequency
      t.text :systemrequirements
      t.text :dimensions
      t.string :weight
      t.text :features
      t.text :packagecontents
      t.string :plug
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
