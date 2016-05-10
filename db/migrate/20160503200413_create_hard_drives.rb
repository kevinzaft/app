class CreateHardDrives < ActiveRecord::Migration
  def change
    create_table :hard_drives do |t|
      t.string :name
      t.string :drivetype
      t.string :code
      t.string :price
      t.string :capacity
      t.string :color
      t.text :dimensions
      t.text :weight
      t.text :interface
      t.string :texture
      t.string :warranty
      t.string :voltage
      t.text :requirements
      t.text :accessories
      t.string :temperature

      t.timestamps null: false
    end
  end
end
