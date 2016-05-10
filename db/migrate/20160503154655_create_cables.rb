class CreateCables < ActiveRecord::Migration
  def change
    create_table :cables do |t|
      t.string :name
      t.string :code
      t.string :cabletype
      t.text :description
      t.string :price

      t.timestamps null: false
    end
  end
end
