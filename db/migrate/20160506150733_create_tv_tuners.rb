class CreateTvTuners < ActiveRecord::Migration
  def change
    create_table :tv_tuners do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :model
      t.string :tunertype
      t.string :tvtuner
      t.string :tvstandards
      t.string :remotecontrol
      t.string :videoencoding
      t.string :tunerinterface
      t.string :lowprofileready
      t.string :fmtuner
      t.string :videoformat
      t.text :portsin
      t.text :systemrequirments
      t.string :processor
      t.string :graphicscard
      t.string :availableslot
      t.text :os
      t.text :features
      t.text :packagecontent
      t.text :other

      t.timestamps null: false
    end
  end
end
