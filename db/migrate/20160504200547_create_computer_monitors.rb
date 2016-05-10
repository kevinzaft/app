class CreateComputerMonitors < ActiveRecord::Migration
  def change
    create_table :computer_monitors do |t|
      t.string :name
      t.string :code
      t.string :price
      t.string :brand
      t.string :monitormodel
      t.string :monitortype
      t.string :paneltype
      t.string :display
      t.string :resolution
      t.string :ratio
      t.string :response
      t.string :contrast
      t.string :brightness
      t.string :displaycolors
      t.string :inputconnector
      t.string :touchscreen
      t.string :threed
      t.string :builtinspeaker
      t.string :usb
      t.string :tvtuner
      t.string :power
      t.string :heightadjustable
      t.string :tilt
      t.string :dimensions
      t.string :weight
      t.string :warranty

      t.text :other
      t.timestamps null: false
    end
  end
end
