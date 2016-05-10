class CreateOperatingSystems < ActiveRecord::Migration
  def change
    create_table :operating_systems do |t|
      t.string :name
      t.string :price
      t.string :code
      t.text :disclaimer
      t.string :brand
      t.string :brandmodel
      t.string :bitversion
      t.string :version
      t.text :systemrequirements
      t.string :packaging
      t.text :features
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end
