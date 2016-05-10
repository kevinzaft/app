class CreateIoControllers < ActiveRecord::Migration
  def change
    create_table :io_controllers do |t|
      t.string :name
      t.string :code
      t.string :price
      t.string :brand
      t.string :iomodel
      t.text :spec
      t.string :dimensions
      t.text :requirements
      t.text :other

      t.timestamps null: false
    end
  end
end
